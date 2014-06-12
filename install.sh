#!/usr/bin/env bash

echo "Installing Jcowie DotFiles"

DOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -nfs $DOTDIR/.gitconfig ~/
ln -nfs $DOTDIR/.githelpers ~/
ln -nfs $DOTDIR/.gitignore_global ~/
ln -nfs $DOTDIR/fish/config.fish ~/.config/fish/
ln -nfs $DOTDIR/fish/functions ~/.config/fish/
ln -nfs $DOTDIR/.osx ~/
ln -nfs $DOTDIR/git ~/

ln -nfs $DOTDIR/bin/bdd ~/bin/bdd
ln -nfs $DOTDIR/bin/spec ~/bin/spec
ln -nfs $DOTDIR/bin/symf ~/bin/symf
