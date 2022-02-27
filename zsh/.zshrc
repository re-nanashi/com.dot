# PATH
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin:/home/.npm-global/bin/:$HOME/.local/share/gem/ruby/3.0.0/bin
export DOT="$HOME/.dotfiles"

#ZSH_THEME
ZSH_THEME="evan" #lambda
source $ZSH/oh-my-zsh.sh

# PLUGINS
plugins=(git, zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# POKEMON LOADER
#KITTY_INSTANCES=$(bspc query -N -d $somedesktop -n .window.\!hidden | wc -l)
#pokemon_list=('darkrai' 'absol')
#if [ $KITTY_INSTANCES -le 1 ]; then
#    random=$((1 + $RANDOM % 2))
#    pokemon-colorscripts -n ${pokemon_list[$random]}
#fi

### ALIAS CONFIGS
alias eba='zsh'

#VIM
export EDITOR='nvim'
alias v='nvim'
alias vis='sudo nvim'
alias vm='nvim $DOT/nvim/.config/nvim/init.vim'
alias vmdir='cd $DOT/nvim/.config/nvim'

#CONFIGS
alias b='nvim $DOT/bspwm/.config/bspwm/bspwmrc'
alias ba='nvim $DOT/zsh/.zshrc'
alias sx='nvim $DOT/sxhkd/.config/sxhkd/sxhkdrc'
alias po='nvim $DOT/polybar/.config/polybar/config'
alias kc='nvim $DOT/kitty/.config/kitty/kitty.conf'
alias tconf='nvim $DOT/tmux/.tmux.conf'

#PROGRAMMING
alias main='nvim $HOME/Documents/Code_Files/cpp/main.txt'
alias cm='google-chrome-stable $HOME/Documents/Code_Files/cpp/materials/learn7.pdf'
alias learn='cd $HOME/Documents/computer_sci'
alias pdir='cd $HOME/Documents/Projects/audio-clipb'
alias pdir1='cd $HOME/Documents/Code_Files/cpp/learning_cpp'
alias cp='g++ -g -o main'
alias pro='cd $HOME/Documents/Projects'
alias t='tmux'
alias mux='pgrep -vx tmux > /dev/null && \
		tmux new -d -s delete-me && \
		tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
		tmux kill-session -t delete-me && \
		tmux attach || tmux attach'

#CMD
alias c='clear'
alias la='ls -a'
alias ll='ls -la'

#DIRECTORIES
alias dot='cd $HOME/.dotfiles'
alias dl='cd $HOME/Downloads'
alias doc='cd $HOME/Documents'
alias sc='cd $HOME/Documents/Screenshots'
alias n='nnn -d -e'
alias sales='nvim $HOME/Documents/Personal_Dev/notes.txt'
alias pd='vi $HOME/Documents/Personal_Dev'
alias usb='cd /mnt/usb/'

#MISC
alias tsk='bpytop'
alias sked='sxiv $HOME/Documents/Personal_Dev/schedule.png'
alias clock='tty-clock -sct -f "%a, %d %b %Y %T %z"'
alias pk='pokemon-colorscripts -r 1-4'
alias rep='cd $HOME/Documents/School_Related/Report-Nov-23'
alias cmat='cmatrix -C red'

#POWER
alias denkiwokiru='sudo poweroff'

#NNN
export NNN_FCOLORS='c1e1f931006033f7c6d6abc4'

### MISC CONFIGS

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
