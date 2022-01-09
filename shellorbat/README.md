## change_pic_to_webp.sh用法

[change_pic_to_webp.sh](https://gitee.com/hangliebe/resource/blob/master/shellorbat/ffmpeg/change_pic_to_webp.sh)

**该脚本作用是将文件夹中所有图片文件转换成webp格式**。

> sh change_pic_to_webp.sh 参数1 参数2

输入**参数1** 需要转换的文件夹，注意，不要在结尾加上“/”，输入的文件夹应该与change_pic_to_webp.sh脚本文件在同一文件夹位置

输入**参数2** 需要转换的目标文件夹，会自动创建。

例子：`sh change_pic_to_webp.sh out out2`

>$ sh change_pic_to_webp.sh out ou2
>
>需要转换格式的文件夹为：out
>
>输出到文件夹：ou2
>
>是否递归处理所有子文件夹: [Y/N]?y
>
>递归 ..

如上面所示，脚本输入后，还会需要再输入一个是否递归处理所有子文件夹，选Y为递归，选择N为不递归。

## hexoinit用法

[hexoinit](https://gitee.com/hangliebe/resource/tree/master/shellorbat/hexo/hexoinit_for_windows.sh)脚本用于在windows环境下初始化hexo。

执行脚本后输入项目名称，可以配置一个icarus主题的博客网站。