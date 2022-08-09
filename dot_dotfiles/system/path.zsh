#!/bin/sh
JAVA_HOME=$HOME/Java/jdk8u312-b07
PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:~/go/bin:~/.local/bin:~/.cargo/bin:/usr/local/go/bin:$PATH
HISTFILE=~/.zsh_history
CHROME_BIN=/usr/bin/vivaldi
export HISTFILE PATH JAVA_HOME CHROME_BIN
