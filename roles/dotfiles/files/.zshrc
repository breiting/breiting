# Show contents of directory after cd-ing into it
chpwd() {
  ls
}

# Save history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Make sure that umlauts are correctly displayed (e.g. Mutt)
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Enable backward search
bindkey '^R' history-incremental-search-backward

# Enable completion
autoload -U compinit
compinit

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

case `uname` in
  Darwin)
      # Get the Artifactory password from system keychain
      get_artifactory_password () {
            security 2>&1 >/dev/null find-generic-password -ga artifactory \
                  |ruby -e 'print $1 if STDIN.gets =~ /^password: "(.*)"$/'
      }

      # Get AZURE password
      get_azure_password () {
            security 2>&1 >/dev/null find-generic-password -ga azure \
                  |ruby -e 'print $1 if STDIN.gets =~ /^password: "(.*)"$/'
      }
      export JAVA_HOME=/Library/Java/Home
  ;;
  Linux)
    get_artifactory_password () {}
    get_azure_password () {}
    export JAVA_HOME=/usr/lib/jvm/default
    export GDK_SCALE=1
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac

export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.vault_pass.txt

export MAVEN_USERNAME=admin
export MAVEN_PASSWORD=$(get_artifactory_password)

export QTDIR=/usr/local/Cellar/qt/5.10.1
export CMAKE_PREFIX_PATH=$QTDIR

export EDITOR=vim
export SHELL=/bin/zsh

# Sourcing of other files
source $HOME/.zsh/aliases
source $HOME/.zsh/pomodoro.sh
source $HOME/.zsh/functions
source $HOME/.zsh/prompt

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$QTDIR/bin"
export PATH="$PATH:/Library/TeX/texbin"
export PATH="$PATH:$HOME/workspace/br-utils"
export PATH=$PATH:/opt/azure/bin
export PATH=$PATH:/opt/idea-IC-181.4892.42/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# source '/opt/azure/az.completion'

# Activate FZF fuzzy finder
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
