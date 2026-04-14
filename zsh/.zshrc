# ================================
# 🧭 1. PATH & ENVIRONMENT
# ================================

# Local binaries (zoxide, pip, etc.)
export PATH="$HOME/.local/bin:$PATH"
export TERM="xterm-256color"
# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# NVM (Node.js)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# ================================
# ⚡ 2. SHELL BEHAVIOR
# ================================

# Vim mode
bindkey -v

# Reduce ESC delay (IMPORTANT)
KEYTIMEOUT=1

# Show mode (NORMAL / INSERT)
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne "\033]0;NORMAL\007"
  else
    echo -ne "\033]0;INSERT\007"
  fi
}
zle -N zle-keymap-select

# ================================
# 🔌 3. PLUGINS (ORDER MATTERS)
# ================================

# Autosuggestions (must be early)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# FZF (keybinding + completion)
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh

# Completions (must BEFORE syntax highlight)
fpath=(~/.zsh/zsh-completions/src $fpath)
autoload -Uz compinit && compinit

# Syntax highlighting (ALWAYS LAST)
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# ================================
# 🧠 4. SMART TOOLS
# ================================

# Smart cd
eval "$(zoxide init zsh)"

# Prompt
eval "$(starship init zsh)"

# Auto env loader
eval "$(direnv hook zsh)"

# ================================
# ⚡ 5. ALIASES
# ================================

# File navigation
alias ls="eza --icons"
alias ll="eza -l --icons"
alias tree="eza --tree"
alias hm="cd ~"

# Git (minimal như bạn yêu cầu)
alias gl="git pull"
alias gp="git push"
alias gc="git commit -m"

alias vi="nvim"
alias cls="clear"
# ================================
# ⌨️ 6. KEYBINDINGS
# ================================

# Ctrl + Arrow → move word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# Ctrl + Backspace → delete word
bindkey '^H' backward-kill-word
