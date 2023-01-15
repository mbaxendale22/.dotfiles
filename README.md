# NEOVIM INSTALL GUIDE


## Plugin Manager - Packer

Install using: 

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
full details here:
- [Packer](https://github.com/wbthomason/packer.nvim)
 
Then source the file using:
```
:so <CR>
```
  
Install packages using:
```
:PackerSync <CR> 
```

## Telescope

Will be installed using packer but additional tools needed for use are:

### RipGrep:

brew install ripgrep

- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)

### FD

brew install fd

- [sharkdp/fd](https://github.com/sharkdp/fd)

## Keymaps

All custom keymaps can be found in
```
nvim/after/plugin/kemap 
```

Except for LSP specific keymaps (go to defintition etc.,)
```
nvim/bax/lsp_config.lua
```


 
