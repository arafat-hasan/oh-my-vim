cd ~

git clone https://github.com/arafat-hasan/oh-my-vim

echo "\033[0;34mCloning Oh My Vim...\033[0m"
hash git >/dev/null 2>&1 && /usr/bin/env git clone https://github.com/arafat-hasan/oh-my-vim.git || {
  echo "git not installed"
  exit
}

mv -R oh-my-vim .vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
install.py --clang-completer --java-completer --ts-completer




echo "\033[0;32m"'  ____  __     __  _____  __  _   ________  ___  '"\033[0m"
echo "\033[0;32m"' / __ \/ /    /  |/  /\ \/ / | | / /  _/  |/  /  '"\033[0m"
echo "\033[0;32m"'/ /_/ / _ \  / /|_/ /  \  /  | |/ // // /|_/ /   '"\033[0m"
echo "\033[0;32m"'\____/_//_/ /_/  /_/   /_/   |___/___/_/  /_/    '"\033[0m"
	
