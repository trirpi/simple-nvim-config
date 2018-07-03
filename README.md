# simple-nvim-config

## Features

* beautifull airline status bar
* modern colorscheme
* persistent undo without ugly files
* line numbers
* simple plug-vim plugin manager

## Installation (Ubuntu 18.04)

1. Install NVim
```
    sudo apt install nvim
```
2. Clone repository
```
    git clone https://github.com/trirpi/simple-nvim-config
```
3. Go into repository
```
    cd simple-nvim-config
```
4. Change config file located at `~/.config/nvim/init.vim`
```
    mv init.vim ~/.config/nvim/init.vim
```
5. Created directory for persistent undo
```
    mkdir ~/.config/nvim/undodir
```
6. Install vim-plug for Neovim
```
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Refer to https://github.com/junegunn/vim-plug for more information

7. Install all plugins (Open NVim)
```
    nvim
```
then type `:PlugInstall`

8. Compile `Youcomplete me`
```
    cd ~/.config/nvim/plugged/youcompleteme
    ./install.sh
```
