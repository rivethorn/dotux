set fish_greeting ""

function fish_mode_prompt
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    # starship init fish | source
end

function fish_command_not_found
    set -l cmd $argv[1]
    if test -f ./$cmd; and test -x ./$cmd
        ./$cmd $argv[2..-1]
    else
        __fish_default_command_not_found_handler $argv
    end
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

alias gr='go run'
alias gb='go build'
alias cr='cargo run'
alias cb='cargo build'
alias odr='odin run'
alias odb='odin build'

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

alias vconf='nvim ~/.config/nvim/'

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

set --export EDITOR nvim
set --export VISUAL nvim
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
export RUSTC_WRAPPER=sccache

# # bun
# set --export BUN_INSTALL "$HOME/.bun"
# set --export PATH $BUN_INSTALL/bin $PATH

set --export PATH ~/.local/bin/ $PATH
set --export PATH /opt/local/bin/ $PATH
set --export PATH ~/.mimir/bin/ $PATH
set --export HOMEBREW_NO_ENV_HINTS 1
# set -g fish_autosuggestion_enabled 0

set --global hydro_color_prompt cyan

# set -gx CC /opt/homebrew/bin/clang
# set -gx CXX /opt/homebrew/bin/clang++
set -gx VCPKG_ROOT ~/vcpkg

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
