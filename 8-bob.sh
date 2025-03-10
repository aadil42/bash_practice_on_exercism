
if [[ $# -ne 1 ]]; then
    echo "You should only provide exactly one argument"
    exit 1
    fi


silence () {
    [[ $1 =~ ^[\ ]*$ ]]
}

yelling () {
    [[ $1 =~ ^[A-Z\ ]+\.$ ]]
}

yellingQuestion () {
    [[ $1 =~ ^[A-Z\ ]+\?$ ]]
}

askingQuestion () {
    [[ $1 =~ ^[A-Za-z\ ]+\?$ ]]
}

if silence; then
    echo "Fine. Be that way!"
    exit 1
    fi

if yelling; then
    echo "Whoa, chill out!"
    exit 1
    fi

if yellingQuestion; then
    echo "Calm down, I know what I'm doing!"
    exit 1
    fi

if askingQuestion; then
    echo "Sure."
    exit 1
    fi

    echo "Whatever"
    exit 1


