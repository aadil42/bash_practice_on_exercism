if [[ $# -gt 1 || $# -eq 0 ]]; then
    echo "You must provide exactly one argument"
    exit 1
    fi

if [[ ${#1} -lt 26 ]]; then
    echo "false"
    exit 1
    fi

declare -A letters

for ((i = 0; i < ${#1}; i++)); do 
    letter=${1:i:1}
    letters[$letter]=true
    done

[[ ${#letters[@]} -ge 26 ]] && echo true || echo false