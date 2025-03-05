if [[ $1 == "" ]]; then
   echo "Usage: 5-acronym <arg1>"
   exit 1
    fi

words=${1//[^A-Za-z\']/ }
acr=""

for word in $words; do
    acr+="${word:0:1}"
    done

echo "${acr^^}"
exit 1