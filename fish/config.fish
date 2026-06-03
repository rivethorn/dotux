set -U fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# Y Function for yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Aliases
alias c='clear'
alias cls='clear'
alias vi='nvim'
alias lg='lazygit'
alias cat='bat'

alias cr='cargo run'
alias cb='cargo build'

alias prx='export https_proxy=socks5://127.0.0.1:8086'
alias cprx='export https_proxy=""'
alias mhrv='~/Downloads/mhrv-rs-linux-amd64/run.sh'

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

abbr gc "git clone"
abbr gc1 "git clone --depth 1"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

zoxide init fish | source

export RUSTC_WRAPPER=sccache

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export PATH ~/.local/bin/ $PATH
