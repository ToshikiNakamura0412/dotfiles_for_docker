source /etc/os-release
OS_NAME=$(echo $ID)

if [ $OS_NAME = "alpine" ]; then
    alias ll='ls -l'
    alias la='ls -lA'
    alias l='ls -la'
fi

export TERM=screen-256color
