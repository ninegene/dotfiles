#!/bin/bash

function linux {
    sudo apt-get install git
    sudo apt-get install gitg # free simple git ui client to see branches and changes/diff before commit
    sudo apt-get install tree colordiff # used in shell aliases
    sudo apt-get install exuberant-ctags # for vim tagbar plugin
    # ack.vim vim plugin
    # http://beyondgrep.com/install/
    sudo apt-get install ack-grep
    sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
    echo "Install SmartGit git ui client (non-commercial) manually from http://www.syntevo.com/smartgithg/"
    echo "Installation steps (SmartGitHg is only free for non-commercial use):
    Download it from the site
    $ open http://www.syntevo.com/smartgithg/
    $ sudo mkdir /opt
    $ cd ~/Downloads (or downloaded directory)
    $ tar xvfz smartgithg-generic-x_x_x.tar.gz (where x_x_x is the version)
    $ sudo mv smartgithg-x_x_x /opt/
    $ sudo ln -s /opt/smartgithg-x_x_x /opt/smartgithg
    $ sudo ln -s /opt/smartgithg/bin/smartgithg.sh /opt/smartgithg/bin/smartg
    $ /opt/smartgithg/bin/add-menuitem.sh (add menu/icon item)
    $ smartg (to open from command line)
}

function mac {
    sudo port install git-core +bash_completion +credential_osxkeychain +doc +pcre +python27
    sudo port install tree colordiff # for aliases
    sudo port install ctags # for tagbar vim plugin
    sudo port install p5-app-ack # for ack.vim plugin
    echo Install SourceTree git ui client from http://www.sourcetreeapp.com
    #open http://www.sourcetreeapp.com/
}

function main {
    echo "Start installing dependencies ====="
    case $(uname -s) in
    Linux)
        linux
        ;;
    Darwin)
        mac
        ;;
    *)
        echo 'Unknown platform. Fail to insatll.'
        ;;
    esac
    echo "End installing dependencies ====="
}

main
