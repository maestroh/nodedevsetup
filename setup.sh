sudo apt-get install -y git-core

cd $HOME
if [ -d ./dotfile/ ]; then
  mv dotfile dotfile.old
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

git clone https://github.com/maestroh/dotfile.git
ln -sb dotfile/.screenrc .
ln -sb dotfile/.vimrc .



