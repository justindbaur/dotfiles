#!/usr/bin/env bash

DOTNET_NAME="dotnet"
GIT_NAME="git"
DOCKER_NAME="docker"

if [ "$(uname)" == "Darwin" ]; then
  # Do MacOS things
  echo "Detected MacOS"
  install() {
    echo 
  }
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Do Linux
  echo "Detected Linux"
  install() {
    echo "Install Linux ${1}"
  }
fi

echo "Running installs"

install $DOTNET_NAME
install $GIT_NAME
install $DOCKER_NAME
