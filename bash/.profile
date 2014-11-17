# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export LOADED_DOT_PROFILE="true"
export platform=`uname -s`

### Linux

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/lib/jvm/jdk7/bin" ] ; then
    export JAVA_HOME=/usr/lib/jvm/jdk7
    PATH="$JAVA_HOME/bin:$PATH"
fi

if [ -d "/opt/idea/bin" ] ; then
    export IDEA_JDK=$JAVA_HOME
    export IDEA_HOME=/opt/idea
    PATH="$PATH:$IDEA_HOME/bin"
fi

if [ -d "/opt/adt/sdk" ] ; then
    export ANDROID_HOME=/opt/adt/sdk
    PATH="$PATH:$ANDROID_HOME/tools"
    PATH="$PATH:$ANDROID_HOME/platform-tools"
fi

if [ -d "/opt/groovy/bin" ] ; then
    export GROOVY_HOME=/opt/groovy
    PATH="$PATH:$GROOVY_HOME/bin"
fi

if [ -d "/opt/grails/bin" ] ; then
    export GRAILS_HOME=/opt/grails
    PATH="$PATH:$GRAILS_HOME/bin"
fi

if [ -d "/opt/gradle/bin" ] ; then
    export GRADLE_HOME=/opt/gradle
    PATH="$PATH:$GRADLE_HOME/bin"
fi

#
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
          source "$HOME/.bashrc"
    fi
fi

