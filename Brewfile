# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# install coreutils 2> /dev/null
# Install some other useful utilities like `sponge`
# install moreutils 2> /dev/null
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils 2> /dev/null
# Install Bash 4
install bash 2> /dev/null

# Install wget with IRI support
install wget --enable-iri 2> /dev/null

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
# install ringojs
# install narwhal

# Install more recent versions of some OS X tools
# install vim --override-system-vi
# install homebrew/dupes/grep
# install josegonzalez/homebrew-php/php55

# This formula didn’t work well last time I tried it:
#install homebrew/dupes/screen

# Install other useful binaries
install direnv 2> /dev/null
install ack 2> /dev/null
install pv 2> /dev/null
#install exiv2
install git 2> /dev/null
install imagemagick --with-webp 2> /dev/null
install lynx 2> /dev/null
install node 2> /dev/null
install pigz 2> /dev/null
install rename 2> /dev/null
# install rhino
install tree 2> /dev/null
install webkit2png 2> /dev/null
install zopfli 2> /dev/null
install p7zip 2> /dev/null

# Android SDK
install android-sdk 2> /dev/null

# install homebrew/versions/lua52

# Remove outdated versions from the cellar
cleanup
