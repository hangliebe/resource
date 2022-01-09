#! /bin/bash
function change_pic_to_webp() {
   ffmpeg -y -i $1 $2"/"${1%.*}.webp;
   echo "------------------------------------------------"
   echo "change $1 to $2"/"${1%.*}.webp" 
}

function read_dir(){
    for file in `ls $1`
    do
        echo $1"/"$file
		change_pic_to_webp $2"/"$1"/"$file
    done
}

function read_dir_recursion(){
    for file in `ls $1`
    do
        if [ -d $1"/"$file ]
        then
		    mkdir -p $2/$1/$file
            read_dir_recursion $1"/"$file $2
        else
            echo $1"/"$file
			change_pic_to_webp $1"/"$file $2
        fi
    done
}

#测试目录 test

echo "需要转换格式的文件夹为：$1";
echo "输出到文件夹：$2";

mkdir -p $2/$1

read -n1 -p "是否递归处理所有子文件夹: [Y/N]?" answer
case $answer in
Y | y) echo
	echo "递归 .."
	read_dir_recursion "$1" "$2";;
	
N | n) echo
	echo "不递归!"
	read_dir "$1" "$2"
	exit;;
esac
echo "End"

 