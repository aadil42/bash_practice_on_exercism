# string of <= 1 are not allowed.
# concatinate all the argument because it can be space seprated
# go from right to left digit every second number if the doubling goes beyond 9 then subtract 9 from it.
# add all the digits and if it's divisible by 10 return true otherwise false


if [[ $1 -le 1 ]]; then 
    echo "Argument of length 1 or less is not allowed."
    exit 1;
fi


num=""

for arg in "$@"; do
    num+="$arg"
done

luhnNum=""
evenOdd=0

for ((i=$(( ${#num}-1 )); i > -1; i--)) {

    digit="${num:i:1}"
    if [[ $((evenOdd % 2)) -ne 0 ]]; then

        if (( digit * 2 > 9 )); then
            luhnNum+=$((digit * 2 - 9))
        else
            luhnNum+=$((digit * 2));
        fi
         
         
    else 
        luhnNum+=$digit
    fi 

    ((evenOdd++))    
}

total=0
for char in $(echo "$luhnNum" | grep -o .); do
    total=$((total + char))
done


if (( $total % 10 != 0 )); then
    echo "false"
    exit 1
fi

echo "true"

