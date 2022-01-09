function configTheme() {
    cd themes
	git clone https://github.com/ppoffice/hexo-theme-icarus.git icarus
	
	cd ..
	sed -i 's/landscape/icarus/g' _config.yml
}

# 确保安装nodejs 并配置环境变量
if ! [ -x "$(command -v node)" ]; then
  echo 'Error: node is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v npm)" ]; then
  echo 'Error: npm is not installed.' >&2
  exit 1
fi

echo "检测到nodejs已经安装"

read -p "请输入创建项目的名称（英文名）:" PRO_NAME

echo 项目名称设置为: $PRO_NAME


if ! [ -x "$(command -v hexo)" ]; then
  echo 'Error: hexo is not installed.' >&2
  # 安装hexo
  npm install hexo-cli -g
  # 查看版本
  hexo -v
fi


# 建站
hexo init $PRO_NAME
cd $PRO_NAME

# 配置主题.macos暂时不配置主题
# configTheme

hexo g
#发布
hexo s 

start http://localhost:4000/
