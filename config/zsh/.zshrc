# plugins=(fzf git vi-mode zsh-syntax-highlighting)

### User configuration =========================================================

# System -----------------------------------------------------------------------

# Enable history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Case-sensitive prompts
CASE_SENSITIVE="true"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Environment variables --------------------------------------------------------

# Custom prompt
PROMPT='%F{196}%n%F{208}@%F{214}%m%F{142}:%F{175}%1~ %F{132}%#%f '
export PROMPT

# Custom path variables
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

export FLAMESHOT=$HOME/Pictures/flameshot

export FZF_BASE=$ZPLUGINS/fzf

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Audio
export NUFORCE_SINK="alsa_output.usb-NuForce_NuForce___DAC_2-01.analog-stereo"

# Aliases ----------------------------------------------------------------------

source $ZDOTDIR/.zsh_aliases

### Plugins ====================================================================

# fzf --------------------------------------------------------------------------

source $ZPLUGINS/fzf.zsh

# git --------------------------------------------------------------------------

source $ZPLUGINS/git/git.plugin.zsh

# zsh-vim-mode -----------------------------------------------------------------
source $ZPLUGINS/zsh-vim-mode/zsh-vim-mode.plugin.zsh

bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

# HAS TO BE LAST ---------------------------------------------------------------
# Syntax highlighting ----------------------------------------------------------
source $ZPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

