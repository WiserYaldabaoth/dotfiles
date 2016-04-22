# gitaliases.sh
# Installs custom git aliases.


# git alias -- Make a new alias
git config --global alias.alias "!sh -c '[ $# = 2 ] && git config --global alias.\"$1\" \"$2\" && exit 0 || echo \"usage: git alias <new alias> <original command>\" >&2 && exit 1' -"

# git fl -- Pretty git log
git config --global alias.fl log "--oneline --graph --all --decorate=full"

# git fld -- Pretty git log sorted by date
git config --global alias.fld log "--oneline --graph --all --decorate=full --date-order"

# git fll -- Pretty git log for showing only the current branch
git config --global alias.fl log "--oneline --graph --decorate=full"

# git renameTag -- Rename an existing tag
git config --global alias.renameTag "!sh -c 'set -e;git tag $2 $1; git tag -d $1;git push origin :refs/tags/$1;git push --tags' -"

# git new -- See new commits (typically after git pull)
git config --global alias.new "!sh -c 'git log $1@{1}..$1@{0} \"$@\"'"

