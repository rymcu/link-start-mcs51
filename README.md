# 8051 CLI

win平台下8051快速生成开发环境

## 1.必要条件

- 1. git bash
- 2. python >= 3.5
- 3. git 与 python/pip/PythonScripts都在系统环境变量下

## 2.初始化

打开`git bash`直接调用`init.sh`

```bash
# 创建目录
mkdir src out include
# 安装stcgal 烧录工具
pip install stcgal
# 测试安装
stcgal --help
# 解压缩sdcc
unzip tools-sdcc.zip
# 拷贝头文件
cp -rf tools-sdcc/include/ $(pwd)/
# 测试sdcc
$(pwd)/sdcc.sh
sdcc --help
```

## 3.如何编译

以`template`项目为例,`src`下每一个目录对应一个`application`,每个`application`下都应该有自己的编译脚本编译c文件到`out`目录下  
可以使用`builder.sh` 直接传入 `application`名称,脚本会去调用`application/build.sh`


```bash
# 例如
./builder.sh template
```

# 4.如何烧录

使用`flush.sh`需要传入两个到三个参数

- `-a` application name,对应编译好的src映射到out下的目录名称
- `-b` binary 编译后的文件名称
- `-u` usb地址,可以不传,会使用`flush.sh`中默认的usb地址,第一次使用需要手动更改`defaultUSB`参数

```bash
# 例子
./flush.sh -a template -b main.o
./flush.sh -a template -b main.o -u com
```



