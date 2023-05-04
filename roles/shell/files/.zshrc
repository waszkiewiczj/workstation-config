export ZSH="${HOME}/.oh-my-zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_TMUX_AUTOSTART="true"

plugins=(
  git
  tig
  fzf
  ansible
  zsh-autosuggestions
  tmux
)

alias xcopy="xclip -selection clipboard"
alias xpaste="xclip -selection clipboard -o"
alias fzf="fzf --preview 'bat {}' --bind 'ctrl-e:execute(vim {})'"

source ${ZSH}/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
