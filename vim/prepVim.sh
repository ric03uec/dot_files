#!/bin/bash -xe

echo "Removing installed vim"
sudo apt-get -yy remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common

echo "Installing required libraries"
sudo apt-get -yy install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev;

echo "Downloading vim "
cd /tmp
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
#wget http://mirrors-ru.go-parts.com/pub/vim/unix/vim-7.4.tar.bz2
echo "Unzipping vim"
tar -xjvf vim-7.4.tar.bz2
cd vim74
echo "Installing"
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7-config \
            --enable-perlinterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

echo "Setting vim as default editor"
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

echo "========== vim install done ============"
echo "========== Installing plugins==========="

echo "-------- Installing Vundle ------------"
rm -rf ~/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "--------- Installing exuberant-ctags -------------"
sudo apt-get install -y exuberant-ctags

echo "-------- Installing powerline dependencies --------"
pip install git+git://github.com/Lokaltog/powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

echo "--------- Installing YCM dependencies --------"
rm -rf ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle && git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

echo "========= Updating vimrc =================="
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cp -vr _vimrc ~/.vimrc
