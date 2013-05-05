export PATH=${PATH}:"/Users/Sylvia/.cabal/bin:${PATH}"
export USERWM=`which xmonad`

#export PATH=${PATH}:android-sdk/tools:android-sdk/platform-tools:
export PATH=${PATH}:android-sdk/platform-tools

alias andrew='ssh sylviah@unix.andrew.cmu.edu'
alias asftp='sftp sylviah@unix.andrew.cmu.edu'
alias electric='ssh kasaharas@electricabac.us'
alias mordor='ssh kasaharas@209.141.35.232'
alias root='ssh root@209.141.35.232'

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -la'
alias cls='clear; ls'
alias emacs='emacs -nw'

alias updick='/usr/bin/uptime | perl -ne "/(\d+) d/;print 8,q(=)x(\$1 * 10),\"D\n\""'

#PS1='\[\e[0;35m\]\u\[\e[0;34m\]@\[\e[0;35m\]\h\[\e[m\]:\[\e[0;34m\]\w\[\e[0;35m\]$\[\e[m\] ';

PS1='\[\e[1;34m\]\w\[\e[0;35m\]$\[\e[m\] ';

# For curl certificate
export CURL_CA_BUNDLE=/usr/share/curl/curl-ca-bundle.crt

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# RVM
export PATH=$HOME/.rvm/bin:$PATH

# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /Users/Sylvia/.rvm/scripts/rvm
