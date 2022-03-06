function configTheme() {
    cd themes
	git clone https://github.com/ppoffice/hexo-theme-icarus.git icarus
	
	cd ..
	sed -i 's/landscape/icarus/g' _config.yml
	
	# 配置plantuml 
	npm install hexo-filter-kroki --save

    # 配置echarts
	# 需要将下面这句插入到themes\icarus\layout\common\head.jsx中
	# {<script src="https://cdn.jsdelivr.net/npm/echarts@4.8.0/dist/echarts.min.js"></script>}
	npm install hexo-tag-echarts --save
	
	
	# 配置文章置顶功能
	npm install hexo-generator-topindex --save
	npm install --save object-assign
	
	# 加密
	npm install --save hexo-blog-encrypt
	
	# 推动git
	npm install --save hexo-deployer-git
}

# 确保PC上安装了MINGW64工具
# 确保安装nodejs 并配置环境变量
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

# 配置主题
configTheme

hexo g
#发布
hexo s 

start http://localhost:4000/
