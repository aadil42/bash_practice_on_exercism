
if [[ $# -ne 1 ]]; then
    echo "Exactly one argument is allowed"
    exit 1
    fi
if [[ ${#1} == 0 ]]; then
    echo "Empty argument is not allowed"
    exit 1
    fi
    
if [[ $1 =~ [^A-Za-z]+ ]]; then 
    echo "only Alphabets from a to z or A to Z are allowed"
    exit 1
    fi


word=$(echo "$1" | tr 'a-z' 'A-Z')

score1=$(echo "$word" | grep -o "[AEIOULNRST]" | tr -d "\n")
score2=$(echo "$word" | grep -o "[DG]" | tr -d "\n")
score3=$(echo "$word" | grep -o "[BCMP]" | tr -d "\n")
score4=$(echo "$word" | grep -o "[FHVWY]" | tr -d "\n")
score5=$(echo "$word" | grep -o "[K]" | tr -d "\n")
score8=$(echo "$word" | grep -o "[JX]" | tr -d "\n")
score10=$(echo "$word" | grep -o "[QZ]" | tr -d "\n")

finalScore=$((${#score1} + ${#score2}*2 + ${#score3}*3 + ${#score4}*4 + ${#score5}*5 + ${#score8}*8 + ${#score10}*10))
echo "$finalScore"
exit 1