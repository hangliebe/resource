echo "a)linux环境配置"
echo "b)windows上wingw64环境配置"
read -n1 -p "请选择配置的环境a/b:" GO_ON
case $GO_ON in
A | a) echo
	BASH_DIR="/etc/bash.bashrc";;
B | b) echo
	BASH_DIR="~/.bashrc";;
esac

echo 


mkdir ~/.config/up -p

wget -P ~/.config/up/ https://gitee.com/hangliebe/resource/raw/master/shellorbat/linux_env/up.sh

echo 'source ~/.config/up/up.sh' >> $BASH_DIR

source $BASH_DIR