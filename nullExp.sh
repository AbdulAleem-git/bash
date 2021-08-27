# set -x
# my_var=80
# echo $my_var
# if [[ "$my_var" -eq "" ]];   
# then
#       echo "\$my_var is NULL"
# else
#       echo "\$my_var is NOT NULL"
# fi
# echo $#
# echo $$
# echo $*
# echo $@
# echo $?
# echo $i!

# for i in $*
# do 
# 	echo $i
# done

# echo $?
# names[0]="abdul"
# names[1]="aleem"
# echo ${names[*]}
# echo ${names[@]}

# val=`expr 34 \* 45`
# echo $val

# a="hello"
# b="hello"
# if [ "'"$a"'" = $b ]
# then 
#       echo "yes"
# else
#    echo "no"
# fi

while getopts b:s:c:i:h options; do
      case "${options}" in 
      b)    
            project=${OPTARG}
            echo "bucket list: for ${project}"
            ;;
      s)
            project=${OPTARG}
            echo "sql instances for ${project}"
            ;;
      c)
            project=${OPTARG}
            echo "clusters list for ${project}"
            ;;
      i)    
            project=${OPTARG}
            echo "untag images for ${project}"
            ;;
      h)
            echo "please know about this command first"
            ;;
      *)
            echo "Invalid options"
            echo "$opt"
            exit 1
      esac
done
shift $((OPTIND-1))