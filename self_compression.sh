#解压文件
#首先判断是否有参数，无参数则输出提示信息
if [ "$1" = "" ]
then
#输出usage信息
echo "usage:self.compression.sh [--list] or [source compressed file] [Detination path]  "
elif [ "$1" = "--list" ]
then echo "Support file types: zip tar tar.gz tar.bz2"
else
    varible="$1"
    suffix=${varible#*.}
#截取后缀名，根据后缀名解压文件
    if [ "$suffix" = "zip" ]
    then unzip $1 -d $2
    elif [ "$suffix" = "tar" ]
    then tar -xvf $1 -C $2
    elif [ "$suffix" = "tar.gz" ]
    then tar -zxvf $1 -C $2
    elif [ "$suffix" = "tar.bz2" ]
    then tar -xjvf $1 -d $2 
    fi
echo $suffix
fi
