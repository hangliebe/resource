function configforlinux() {
  sudo apt-get install ctags
}

function configforwindows() {
  wget https://files.cnblogs.com/files/yaolin1228/ctags2018-1-17.zip
  unzip ctags2018-1-17.zip -d temp

  mv temp/ctags.exe  /mingw64/bin/

  wget https://gitee.com/hangliebe/resource/raw/master/file/cscope-15.8a-win64rev1-static.zip
  unzip cscope-15.8a-win64rev1-static.zip -d temp
  mv temp/cscope.exe  /mingw64/bin/
  
  # fzf配置
  #可以在官网下载 https://github.com/junegunn/fzf-bin/releases
  #待补充
  
  # 删除临时文件
  rm -rf temp
  rm -rf ctags2018-1-17.zip
  rm -rf cscope-15.8a-win64rev1-static.zip 
}

function configforwindows_Mobaxterm() {
  wget https://files.cnblogs.com/files/yaolin1228/ctags2018-1-17.zip
  unzip ctags2018-1-17.zip -d temp

  mv temp/ctags.exe  /bin/

  wget https://gitee.com/hangliebe/resource/raw/master/file/cscope-15.8a-win64rev1-static.zip
  unzip cscope-15.8a-win64rev1-static.zip -d temp
  mv temp/cscope.exe  /bin/
  
  # fzf配置
  #可以在官网下载 https://github.com/junegunn/fzf-bin/releases
  #待补充
  
  # 删除临时文件
  rm -rf temp
  rm -rf ctags2018-1-17.zip
  rm -rf cscope-15.8a-win64rev1-static.zip 
}

echo "####################"
echo "开始安装ctags"
echo "####################"

echo "a)linux环境配置"
echo "b)windows上wingw64环境配置"
echo "c)windows上Mobaxterm环境配置"
read -n1 -p "请选择配置的环境a/b:" GO_ON
case $GO_ON in
A | a) echo
	configforlinux;;
B | b) echo
	configforwindows;;
C | c) echo
	configforwindows_Mobaxterm;;
esac


echo "####################"
echo "创建.vim"
echo "####################"

mkdir ~/.vim


echo "####################"
echo "开始安装NERD_tree"
echo "####################"

wget https://gitee.com/hangliebe/resource/raw/master/file/NERD_tree.zip


unzip NERD_tree.zip -d temp
mv temp/* ~/.vim/


echo "####################"
echo "开始安装taglist_46.zip"
echo "####################"

wget https://gitee.com/hangliebe/resource/raw/master/file/taglist_46.zip

unzip taglist_46.zip -d temp
mv temp/plugin/taglist.vim ~/.vim/plugin/taglist.vim
mv temp/doc/taglist.txt ~/.vim/doc/taglist.txt


# 删除临时文件
rm -rf NERD_tree.zip
rm -rf taglist_46.zip

wget -P ~/ https://gitee.com/hangliebe/resource/raw/master/shellorbat/linux_env/.vimrc

echo "####################"
echo "安装结束"
echo "####################"
