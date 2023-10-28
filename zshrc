# Path to your oh-my-zsh installation.
export ZSH="#HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git dotnet docker)

source $ZSH/oh-my-zsh.sh

alias zshconfig="code ~/.zshrc"

function dt() {
  dotnet test --filter "FullyQualifiedName~$1" -v q
}

# Add .NET Core SDK tools
export PATH="$PATH:/Users/justinbaur/.dotnet/tools"
. "/Users/justinbaur/.acme.sh/acme.sh.env"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
