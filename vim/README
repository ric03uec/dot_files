# Setup vim env  

## Install vim from source  

  - Install the required libraries
  ```
  sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev
  ```

  - remove existing vim installation
  ```
  sudo apt-get remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common
  ```

  - download vim source (version 7.4) and install it
  ```
  wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
  tar -xjvf vim-7.4.tar.bz2
  cd vim74
  ./configure --with-features=huge \
              --enable-rubyinterp \
              --enable-pythoninterp \
              --with-python-config-dir=/usr/lib/python2.7-config \
              --enable-perlinterp \
              --enable-gui=gtk2 --enable-cscope --prefix=/usr
  make VIMRUNTIMEDIR=/usr/share/vim/vim74
  sudo make install
  ```

  - set default editor as vim
  ```
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
  sudo update-alternatives --set editor /usr/bin/vim
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
  sudo update-alternatives --set vi /usr/bin/vim
  ```

## Install vundle and pathogen  
  this will be the primary ways any plugin will be installed
  - vundle  

  ```
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  ```
  all other entries required by vundle are already present in .vimrc

## Dependencies for plugins

  - Powerline  
    I like to have some file stats availabe when editing it and particualy like the powerline for this. Needs some dependencies though.

    ```
    pip install git+git://github.com/Lokaltog/powerline
    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    sudo fc-cache -vf
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
    ```
    Again, all other entries already exist in .vimrc

  - YouCompleteMe  
    The best plugin for autocompletion  

    ```
    cd ~/.vim/bundle && git clone https://github.com/Valloric/YouCompleteMe.git
    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer
    ```

    - golang tagbar
    ```
    go get -u github.com/jstemmer/gotags
    mkdir -p ~/.go-vim
    ln -s $GOPATH/bin/gotags ~/.go-vim/
    ```
