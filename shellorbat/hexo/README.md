# MINGW64工具

## 下载

工具在[官网下载](https://git-scm.com/downloads)对应windows版本进行安装就可以。

## 切换镜像

在 Git Bash 这个命令行工具内可以切换镜像，有些软件安装时候如果没有vpn可能访问不了。

查看当前配置的镜像版本： `npm get registry `

```
$ npm get registry
https://registry.npmjs.org
```

切换淘宝镜像：`npm config set registry http://registry.npm.taobao.org `

切换回官方版本：`npm config set registry https://registry.npmjs.org`

# nodejs安装

在[官网下载](https://nodejs.org/en/)nodejs安装包。一直按默认选项安装即可。

 使用`node -v` 和 `npm -v`  查看是否安装成功。

可以[参考文档](https://zhuanlan.zhihu.com/p/105715224)做一个node_module配置。

# hexo使用

## 安装

运行命令安装：`npm install -g hexo-cli`

查看版本：`hexo v`

## 初始化 hexo init

新建一个工程文件夹（英文名），在所处文件夹中右键`Git Bash here`打开。输入`hexo init`创建一个hexo工程。

这样一个简单的博客项目就创建好了，`hexo g`和`hexo s`命令就可以做验证了。

## 配置

### 主题配置

配置主题需要在theme文件夹下操作。在theme文件夹上，安装需要的主题内容。例如，安装theme主题：

```
git clone https://github.com/ppoffice/hexo-theme-icarus.git icarus 
```

在`_config.yml  `中关联上配置的主题：`theme: icarus`

### 其他配置

不在此讨论。

# 自动化配置脚本

下载windows脚本：

```
wget https://gitee.com/hangliebe/resource/raw/master/shellorbat/hexo/hexoinit_for_windows.sh
```

下载macos脚本：

```
wget https://gitee.com/hangliebe/resource/raw/master/shellorbat/hexo/hexoinit_for_macos.sh
```

