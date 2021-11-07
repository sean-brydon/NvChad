# NvChad Windows Setup

## Requirements 
* [Chocolatey](https://chocolatey.org/install)
* Git
* [RipGrep](https://github.com/BurntSushi/ripgrep)
* NodeJs
* A [Nerd Font](https://www.nerdfonts.com/) Installed

## Setup

#### Neovim
Neovim 0.5+ is required to setup (NvChad)[https://nvchad.github.io] 

    choco install neovim

#### RipGrep
Ripgrep is used to do fuzy search withinn nvim
    
    choco install ripgrep

#### Mingw
Mingw is used in lsp config
```
choco install mingw
```

#### Packer
Packer will be used to install plugins within nvim
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

###  Setup Nvim Config Files
* Clone NvChad default files 
```
git clone https://github.com/NvChad/NvChad
```

or 

* Install my personal fork with a few changes and additional plugins

      git clone https://github.com/sean-brydon/NvChad


Then go to `~/AppData/Local/nvim`. Copy from the cloned folder  `init.lua` and `lua` folder into the nvim folder.

### Open Nvim for the first time

    nvim +PackerSync
      

