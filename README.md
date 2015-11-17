## Linux
- ``mkdir ~/.dotfiles``
- ``git clone https://github.com/baderj/vimrc.git ~/.dotfiles/vimrc``
- ``git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim``
- ln -s ~/.dotfiles/vimrc/.vimrc ~/.vimrc
- in Vim: ``:BundleInstall``



## Windows
- cd %USERPROFILE%
- clone to \vimfiles\vimrc
- mklink _vimrc vimfiles\vimrc\.vimrc
- git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
- :BundleInstall
