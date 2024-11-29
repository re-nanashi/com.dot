# PATH
# Path to oh-my-zsh installation.
export PATH=$PATH:$HOME/.local/bin:/home/.npm-global/bin/:$HOME/.local/share/gem/ruby/3.0.0/bin:/usr/lib/jvm/default/bin/:$HOME/.npm-global/bin/:$HOME/go/bin
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/usr/lib/jvm/default/
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/
set ARDUINO_LIBRARY_ENABLE_UNSAFE_INSTALL=true
export DEBUGINFOD_URLS="https://debuginfod.artixlinux.org/ https://debuginfod.elfutils.org/"

#THEME
export ZSH="$HOME/.oh-my-zsh"
export DOT="$HOME/.dotfiles"

#ZSH_THEME
ZSH_THEME="evan" #lambda
source $ZSH/oh-my-zsh.sh

# PLUGINS
plugins=(git)

# POKEMON LOADER
#KITTY_INSTANCES=$(bspc query -N -d $somedesktop -n .window.\!hidden | wc -l)
#
#pokemon_list=('darkrai' 'mewtwo')
#
#if [ $KITTY_INSTANCES -le 1 ]; then
#
#        random=$((1 + $RANDOM % 2))
#        pokemon-colorscripts -n ${pokemon_list[$random]}
#
#fi

# PRINT ^C when ctrl-c is pressed.
TRAPINT() {
    print -n "^C"
    return $(( 128 + $1 ))
}

### ALIAS CONFIGS
alias eba='zsh'

#VIM
export EDITOR='nvim'
alias vi='nvim'
alias vis='sudo nvim'
alias vm='nvim $DOT/nvim/.config/nvim/init.vim'
alias vmdir='cd $DOT/nvim/.config/nvim'

#CONFIGS
#alias b='nvim $DOT/bspwm/.config/bspwm/bspwmrc'
alias b='nvim ~/.config/i3/config'
alias ba='nvim $DOT/zsh/.zshrc'
alias sx='nvim $DOT/sxhkd/.config/sxhkd/sxhkdrc'
alias po='nvim $DOT/polybar/.config/polybar/config'
alias kc='nvim $DOT/kitty/.config/kitty/kitty.conf'
alias tconf='nvim $DOT/tmux/.tmux.conf'

#PROGRAMMING
alias main='nvim $HOME/documents/Code_Files/Learn_CPP_Material/main.txt'
alias notes='nvim $HOME/documents/Misc/.notes'
alias cm='google-chrome-stable $HOME/documents/Code_Files/cpp/materials/learn7.pdf'
alias mkc='make clean'
#alias learn='cd $HOME/documents/Code_Files/cpp/learning_cpp/learn_c'
alias learn='cd $HOME/documents/Projects/nand2tetris_files'
alias pdir='cd $HOME/documents/Projects/game'
alias pdir1='cd $HOME/documents/Code_Files/cpp/learning_cpp'
alias cpc='g++ -g -o main'
alias pro='cd $HOME/documents/Projects'
alias t='tmux'
alias mux='pgrep -vx tmux > /dev/null && \
		tmux new -d -s delete-me && \
		tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
		tmux kill-session -t delete-me && \
		tmux attach || tmux attach'
alias tcs='nohup sxiv ~/downloads/tmux-cheatsheet.png 1>/dev/null 2>/dev/null &'
alias py='python3'

#CMD
alias c='clear'
alias la='ls -a'
alias ll='ls -la'

#trash
alias rm='trash'
alias trl='trash-list'
alias trestore='trash-restore'

#DIRECTORIES
alias dot='cd $HOME/.dotfiles'
alias dl='cd $HOME/downloads'
alias doc='cd $HOME/documents'
alias sc='cd $HOME/documents/Screenshots'
alias n='nnn -d -e'
alias sales='nvim $HOME/documents/Personal_Dev/notes.txt'
alias pd='vi $HOME/documents/Personal_Dev'
alias usb='cd /mnt/usb/'
alias kt='vi /home/re-nanashi/takeaways'
alias emp='sudoedit /home/.emp'
alias k='~/.config/configure_keyboard.sh'
alias nc='ncdu' # disk space

#MISC
alias tsk='bpytop'
alias sked='sxiv $HOME/documents/Personal_Dev/sched.jpg'
alias skedd='zathura $HOME/downloads/sked.pdf'
alias clock='tty-clock -sct -f "%a, %d %b %Y %T %z"'
alias pk='pokemon-colorscripts -r 1-4'
alias rep='cd $HOME/documents/School_Related/Report-Nov-23'
alias cmat='cmatrix -C red'
alias jdebug='java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5005,suspend=y'
alias nf='neofetch --source ~/.config/neofetch/logo'
alias bt='bluetoothctl'
alias tr="sudo ntpdate -u ptbtime1.ptb.de"
#POWER
alias denkiwokiru='sudo poweroff'

#NNN
export NNN_FCOLORS='c1e1f931006033f7c6d6abc4'

### MISC CONFIGS

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
## added by Webi for pyenv
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#
### Generated for envman. Do not edit.
#[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
