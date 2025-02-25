
if [[ "$#" != 2 ]]; then
  echo "Usage: hamming.sh <arg1> <arg2>"
  exit 1;
fi

declare -A DNALatters

# add DNA latters

DNALatters["A"]="A"
DNALatters["C"]="C"
DNALatters["G"]="G"
DNALatters["T"]="T"

# check if the provided arguments are 

arg1="$1"
for ((i=0; i < ${#arg1}; i++)); do
    char="${arg1:$i:1}"
    if [[ "${DNALatters[$char]}" == "" ]]; then
    echo "Your argument must only contain A, C, G, OR T"
    exit 1
    fi
done

arg2="$2"
for ((i=0; i < ${#arg2}; i++)); do
    char="${arg2:$i:1}"
    if [[ "${DNALatters[$char]}" == "" ]]; then
    echo "Your argument must only contain A, C, G, OR T"
    exit 1
    fi
done

if [[ ${#arg1} != ${#arg2} ]]; then
   echo "Arguments must be of same length"
   exit 1
fi

diff=0

for ((i=0; i < ${#arg1}; i++)); do 

    char1=${arg1:$i:1}
    char2=${arg2:$i:1}
    
    if [[ $char1 != $char2 ]]; then
    	diff=$((diff+1))
    fi
done

echo $diff
exit 1