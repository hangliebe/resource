echo "您可以同步的github与gitee的仓有："
echo "resource"
read -p "请输入完整的仓库名称:" REPO_NAME


git clone git@gitee.com:hangliebe/$REPO_NAME.git
cd $REPO_NAME

sed -i "10i url = git@github.com:hangliebe/$REPO_NAME.git" .git/config