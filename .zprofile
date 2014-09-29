TERM='xterm-256color'
export TERM

EDITOR='vim'
export EDITOR

## NDK
#PATH=/opt/android-ndk:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:$PATH
#PATH=/opt/android-ndk/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin:$PATH

PATH=$HOME/Downloads/k/bin:$PATH
PATH=.:$HOME/.bin:$HOME/.local/bin:$HOME/.gem/ruby/2.1.0/bin:$HOME/.cabal/bin:$PATH

# Python docs
export PYTHONDOCS=/usr/share/doc/python2/html/

# Go stuff # FIXME: possibly outdated
export GOPATH=~/.go
 PATH=$HOME/.go/bin:$PATH

### OPAM configuration
##. /home/karol/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`
