alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/root/.cargo/bin
eval "$(zoxide init zsh)"

#aliases
alias fx='~/Downloads/firefox/firefox &'
alias SecretFinder='python3 /opt/secretfinder/SecretFinder.py'
alias aslr_off='echo 0 | sudo tee /proc/sys/kernel/randomize_va_space'
alias sz='source ~/.zshrc'
alias rm_ghidra='rm *.gpr && rm -rf *.rep && rm *.lock && rm *.lock\~ && rm core'
alias 7a='chmod 777 *'
alias nivm='nvim'
alias gdb='gdb-pwndbg'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
export PATH="$PATH:$(npm bin -g)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# map caps lock to escape
setxkbmap -option caps:escape_shifted_capslock

# set wallpaper
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s "/home/kali/Downloads/lofiwallpaper.png" --create -t string

export NLTK_DATA=/home/kali/nltk_data