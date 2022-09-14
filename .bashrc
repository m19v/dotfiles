# Colors for user,host and directory
export PS1="[\$?] \[$(tput sgr0)\]\[\033[38;5;11m\]\u@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\] \t \[$(tput sgr0)\]\[\033[38;5;13m\][\w]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;2m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\\$ \[$(tput sgr0)\]"

# Fuzzy finder -> https://github.com/junegunn/fzf
# Enabe fzf keybindings and fuzzy auto-completion
# source ~/bin/doc/fzf/examples/key-bindings.bash
# source ~/bin/doc/fzf/examples/completion.bash
