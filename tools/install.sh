if [ -d ~/.zsh ]
then
  echo "\033[0;33mYou already have zsh configured.\033[0m You'll need to remove ~/.zsh if you want to continue."
  exit
fi

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
hash git >/dev/null 2>&1 && env git clone https://github.com/lxyu/lxzsh.git ~/.zsh || {
  echo "git not installed"
  exit
}

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32]Backing up to ~/.zshrc.pre\033[0m";
  mv ~/.zshrc ~/.zshrc.pre;
fi

echo "\033[0;34mUsing the zsh template file and adding it to ~/.zshrc\033[0m"
ln -s ~/.zsh/templates/`uname`.zsh-template ~/.zshrc

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"

if [ "$SHELL" != "$(which zsh)" ]; then
    echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
    chsh -s `which zsh`
fi

echo "\033[0;32m"'              __   '"\033[0m"
echo "\033[0;32m"'  ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'  / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"' /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                   '"\033[0m"

echo "\n\n \033[0;32m....is now configured.\033[0m"

env zsh
. ~/.zshrc
