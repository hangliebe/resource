echo "####################"
echo "开始安装ctags"
echo "####################"
wget https://files.cnblogs.com/files/yaolin1228/ctags2018-1-17.zip
unzip ctags2018-1-17.zip -d temp

mv temp/ctags.exe  /mingw64/bin/

# 删除临时文件
rm -rf temp
rm -rf ctags2018-1-17.zip

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

wget -P ~/ https://gitee.com/hangliebe/resource/raw/master/shellorbat/vim/.vimrc

echo "####################"
echo "安装结束"
echo "####################"
