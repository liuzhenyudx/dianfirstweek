#计算参数阶乘
#首先定义函数
sum=1
func(){
    if [ $1 -eq 1 ]
    then   return 1
    else
    let middle=$1
    let sum=sum*$middle
    func $[$middle-1]
    fi
}
if [ $# -ne 1 ]
then echo -e "usage: factorial.sh [n] \n calculate a number's factorial "
else
func $1
echo $sum
fi

