eval "$(pkgx +neovim.io +direnv +lazygit +fzf +gh)"
eval "$(pkgx +node +github.com/antfu/ni)"
eval "$(pkgx starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(dev --shellcode)"  # https://github.com/pkgxdev/dev


## case insensitive path-completion
autoload -Uz +X compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# vim
export EDITOR=nvim
alias vimdiff='nvim -d'




# antigen -- temporary until pkgx package the libary
source ~/.dotfiles/antigen/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle git
antigen apply
