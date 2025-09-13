# # Setup fzf
# # ---------
# if [[ ! "$PATH" == */home/patrick2/.fzf/bin* ]]; then
#   PATH="${PATH:+${PATH}:}/home/patrick2/.fzf/bin"
# fi
#
# eval "$(fzf --bash)"

# Setup fzf
# ---------

# Add ~/.fzf/bin to PATH
if [[ ! "$PATH" == *"$HOME/.fzf/bin"* ]]; then
  PATH="$HOME/.fzf/bin:$PATH"
fi

# Auto-completion
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.bash" 2>/dev/null

# Key bindings (CTRL-T, CTRL-R, ALT-C)
source "$HOME/.fzf/shell/key-bindings.bash"
