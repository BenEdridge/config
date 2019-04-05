# config-box
A box to hold all manner of `*nix` configurations and environments settings for myself

All files are commented with relevant links and descriptions

Get started:

Adapted from: https://www.atlassian.com/git/tutorials/dotfiles

```bash
# Add this to .bashrc 
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Fix recursion problems
echo ".cfg" >> .gitignore

# Clone into $HOME/.cfg
git clone --bare <git-repo-url> $HOME/.cfg

# Checkout content to $HOME
config checkout

# Set flag showUntrackedFiles for this repo
config config --local status.showUntrackedFiles no

```

A copy of this script is in `LOAD.sh`

Now we can update dot files and commit changes if needed

```
config status
config add .vimrc
config commit -m "Added vimrc"
```
