## 简介
本脚本利用`ssed`实现`*.tex`文件中纯文本抽取以及字数统计。

## 安装方法
1. 将项目clone到本地
2. 运行：`chmod u+x runme.sh`和`./runme.sh`

## 使用方法
`detex sed_file.sed tex_to_convert ouput_file`

## 注意事项
1. 需要工具`ssed`，因其支持`PREs`，安装方法为`brew install ssed`；
2. 转化不是100%准确，自己感觉准确度可以接受，有时偶尔会有一些命令留下，如果你使用感觉有什么问题可以在下面评论告诉我；