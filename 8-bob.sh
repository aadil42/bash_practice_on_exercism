
if [[ $# -ne 1 ]]; then
    echo "You should only provide exactly one argument"
    exit 1
    fi

if [[ $1 =~ ^[\ ]*$ ]]; then
    echo "Fine. Be that way!"
    exit 1
    fi

if [[ $1 =~ ^[A-Z\ ]+\.$ ]]; then
    echo "Whoa, chill out!"
    exit 1
    fi

if [[ $1 =~ ^[A-Z\ ]+\?$ ]]; then
    echo "Calm down, I know what I'm doing!"
    exit 1
    fi

if [[ $1 =~ ^[A-Za-z\ ]+\?$ ]]; then
    echo "Sure."
    exit 1
    fi

    echo "Whatever"
    exit 1


