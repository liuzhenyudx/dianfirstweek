#首先判断参数
if [ "$1" = "" ]
then ls -ahs | sort -rh | head 
elif [ "$1" = "-n" -a "$3" = "-d" ]
then ls -ahs $4 | sort -rh | head -$2
#不符参数条件，则输出usage信息
else echo "usage: zize.sh [-n N] [-d DIR] show top N largest files "
fi
