# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/moisesguimaraes/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

###
### color settings
###

export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

###
### Git
###

# git macros
export PATH=$PATH:/Users/moisesguimaraes/.git-extras
# clang static analyzer
export PATH=$PATH:~/.checker/279/bin

# git shortcuts
alias gcb='git checkout -b'
alias hsd='hack && ship && dwf'
# git config --global alias.lg 'log --all --graph --abbrev-commit --decorate --date=format:"%a, %d %b %Y %H:%M" --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%ad %C(bold green)(%ar)%C(bold yellow)%d %C(dim white)%an%n          %C(white)%s%n"'

###
### Java
###

export JUNIT_HOME=/usr/local/lib/java/junit

###
### wolfSSL
###

HAVE_FIPS_SOURCE=1
#export WOLFSSL_OPENSSL_TEST=1
export WOLFSSL_EXTERNAL_TEST=1

alias conf='./configure'
alias dconf='./configure --enable-debug --disable-shared'
alias cconf='git clean -fdX && ./autogen.sh && ./configure'
alias bloxxconf='./configure --enable-fasthugemath --enable-md2 --enable-sni --enable-ecc --enable-renegotiation-indication --enable-sha512 --enable-supportedcurves --enable-dh --enable-chacha --enable-poly1305 --enable-aesgcm --enable-sslv3 C_EXTRA_FLAGS="-DMAX_CHAIN_DEPTH=10 -DLARGE_STATIC_BUFFERS -DWOLFSSL_CERT_GEN -DWOLFSSL_KEY_GEN -DHUGE_SESSION_CACHE -DOPENSSL_EXTRA -DFP_MAX_BITS=8192 -DWOLFSSL_DER_LOAD -DWOLFSSL_ALT_NAMES -DWOLFSSL_TEST_CERT -DWOLFSSL_ALTERNATIVE_DOWNGRADE -DWOLFSSL_BASE64_ENCODE -DWOLFSSL_STATIC_RSA -DIGNORE_KEY_EXTENSIONS -DWOLFSSL_ALWAYS_VERIFY_CB -g1 -feliminate-unused-debug-symbols"'

alias fipsconf='./configure --enable-fips --enable-keygen'
alias fipshash='./wolfcrypt/test/testwolfcrypt | sed -n "s/hash = \(.*\)/\1/p"'

###
### Wireshark
###

# wireshark background alias
alias wireshark='Wireshark 2> /dev/null &'

# pokemon background alias
alias pokemon='/Applications/The\ Pokémon\ Online\ Trading\ Card\ Game/Pokemon\ Trading\ Card\ Game\ Online.app/Contents/MacOS/Pokemon\ Trading\ Card\ Game\ Online &>> /dev/null &'

###
### Google Cloud SDK
###

alias gae="python2 /usr/local/google-cloud-sdk/bin/dev_appserver.py ."

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

###
### Python
###

# configuração de ambientes virtuais
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/workspaces/python
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
# comment this line before backup!
# pyenv virtualenvwrapper_lazy
