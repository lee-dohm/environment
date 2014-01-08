PATH="/usr/local/bin:$PATH"

if [ -d "$HOME/bin" ]; then
    PATH="$PATH:$HOME/bin"
fi

export PATH
