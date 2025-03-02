if [[ $1 == "" ]]; then
   echo "Usage: 5-acronym <arg1>"
   exit 1
    fi

if  [[ {$1:0:1} == "-" ]]; then
    echo "Error: Argument cannot start with a hyphen"
    exit 1
    fi


if [[ {$1:0:1} == " " ]]; then 
    echo "Error: Argument cannot start with a space"
    exit 1
    fi

acr=${1:0:1}

for ((i=0; i < ${#1}; i++)); do

char=${1:$i:1}
if [[ $char == " " || $char == "-" ]]; then
    acr+=${1:$i+1:1}
    fi

    done

echo $acr | tr 'a-z' 'A-Z'
exit 1