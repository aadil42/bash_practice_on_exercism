if [[ $# > 1 ]]; then
    echo "Only one argument is allowed"
    exit 1
    fi

if [[ $1 =~ [^0-9]+ ]]; then
    echo "Only Digits are allowed"
    exit 1
    fi

target=$1
sum=0
power=${#1}

for ((i=0; i < ${#1}; i++)); do 
    digit=${target:i:1}
    sum=$(( sum + digit ** power ))
    done

if [[ $sum == $target ]]; then 
	echo "true"
	exit 1
   fi

 echo "false"
 exit 1