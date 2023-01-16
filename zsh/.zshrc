source $ZDOTDIR/options
source $ZDOTDIR/completion
source $ZDOTDIR/prompt
source $ZDOTDIR/envvars
source $ZDOTDIR/aliases
source $ZDOTDIR/fzf_comp
source $ZDOTDIR/fzf_config
source $ZDOTDIR/zoxide

if [[ -f $ZDOTDIR/custom ]]; then
  source $ZDOTDIR/custom
fi
