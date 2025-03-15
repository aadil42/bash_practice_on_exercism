
if [[ $# != 0 ]]; then
    echo "No arguments are allowed"
    exit
    fi

delcare -A chessBoard

total=0
for (( i=0; i < 64; i++ )); do
    power=$((i+1))
    ans=$(echo "2^$power" | bc) 
    total=$(echo "$total+$ans" | bc)
    chessBoard[$((i+1))]=$ans
  done


for key in "${!chessBoard[@]}"; do
    echo "$key: ${chessBoard[$key]}" 
  done

echo "total: $total"
