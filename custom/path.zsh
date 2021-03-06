export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin/vendor_perl:/usr/sbin:/usr/bin:/sbin:/bin

if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix coreutils)" ]]; then
        export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
        export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
    fi

    if [[ -d "$(brew --prefix ruby)" ]]; then
        export PATH=$(brew --prefix ruby)/bin:$PATH
    fi

    if [[ -d "/usr/local/share/npm/bin" ]]; then
        export PATH=$PATH:"/usr/local/share/npm/bin"
    fi

    if [[ -f "$(brew --prefix)/etc/grc.bashrc" ]]; then
        source "$(brew --prefix)/etc/grc.bashrc"
    fi

    if [[ -d "/usr/local/opt/go/libexec/bin" ]]; then
        export export PATH=$PATH:/usr/local/opt/go/libexec/bin
    fi
fi

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

if [[ -d "/usr/bin/core_perl/" ]]; then
    export PATH=$PATH:"/usr/bin/core_perl"
fi

if [[ -d "$HOME/Library/Haskell/bin" ]]; then
    export PATH="$HOME/Library/Haskell/bin":$PATH
fi

# test android sdk
if [[ -d "$HOME/tools/android/platform-tools" ]]; then
    export PATH=$HOME/tools/android/platform-tools:$HOME/tools/android/platform:$HOME/tools/android/tools:$PATH
fi
if [[ -d "/opt/android-sdk" ]]; then
    export PATH=/opt/android-sdk/platform-tools:/opt/android-sdk/tools:$PATH
fi

# test user bin
if [[ -d "$HOME/bin" ]]; then
    export PATH=$HOME/bin:$PATH
fi

# use pyenv
if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix pyenv)" ]]; then
        export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
        export PATH=$HOME/.pyenv/bin:$PATH
        eval "$(pyenv init - zsh)"
        eval "$(pyenv virtualenv-init -)"
    fi
elif [[ -d "$HOME/.pyenv/bin" ]]; then
    export PATH=$HOME/.pyenv/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# jython
if [[ -d "/opt/jython" ]]; then
    export PATH=$PATH:/opt/jython/bin
fi

# go
export GOPATH="$HOME/workspace/go"
