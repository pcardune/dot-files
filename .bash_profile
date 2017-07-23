[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# OPAM configuration
. /Users/pcardune/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export NVM_DIR="/Users/pcardune/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=./node_modules/.bin:$PATH
export PATH=./.pcardune/bin:$PATH

export PATH=/usr/local/opt/rabbitmq/sbin:$PATH

source ~/.git-completion.sh
source ~/.git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

function tabname {
  printf "\e]1;$1\a"
}

function winname {
  printf "\e]2;$1\a"
}

cyan=$(tput setaf 6) # \e[36m
red=$(tput setaf 1)
reset=$(tput sgr0)   # \e[0m
PS1='[\u@\h \[$cyan\]\W\[$red\]$(__git_ps1 " (%s)")\[$reset\]$ '
##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export JAVA_HOME=`/usr/libexec/java_home`
export SDKMAN_DIR="/Users/pcardune/.sdkman"
[[ -s "/Users/pcardune/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pcardune/.sdkman/bin/sdkman-init.sh"

PATH="/Users/pcardune/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/pcardune/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/pcardune/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/pcardune/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/pcardune/perl5"; export PERL_MM_OPT;

export HOMEBREW_GITHUB_API_TOKEN=066d8182e0d19744816a2b0ec1c9c333ee5c3c64
eval "$(rbenv init -)"
#export NVM_DIR=~/.nvm
#. $(brew --prefix nvm)/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=~/bin:$PATH
export LC_ALL=en_US.UTF-8

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="/Applications/Genymotion.app/Contents/MacOS/tools:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pcardune/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/pcardune/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pcardune/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/pcardune/Downloads/google-cloud-sdk/completion.bash.inc'; fi
