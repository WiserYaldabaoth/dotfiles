#!/usr/bin/env bash
# Copyright Mathias Bynens <https://mathiasbynens.be/>
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Modified by Brian Alexander Mejorado

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude ".gitignore" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

function usage() {
    echo "$0"
    echo ""
    echo "Installs dotfiles into the home directory."
    echo ""
    echo "Flags:"
    echo ""
    echo "  --force  -f   Do not prompt for input."
    echo "  --help   -h   Show this help message."
    echo ""
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
elif [ "$1" == "--help" -o "$1" == "-h" -o "$1" != "" ]; then
    usage;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset gitReady;
unset doIt;
unset usage;

# vim:fen:fdm=syntax
