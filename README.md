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
## New Lazy.nvim Config

No additional install required. Just use the config files and lazy
will handle the installs for you.

## Telescope

Will be installed using packer but additional tools needed for use are:

### RipGrep:

brew install ripgrep

- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)

### FD

brew install fd

- [sharkdp/fd](https://github.com/sharkdp/fd)


## Tmux

Tmux config uses TPM (plugin manager). Install with:
 
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
full details here:
- [TPM](https://github.com/tmux-plugins/tpm)

## AOB

### Fonts
To see icons and ligs you'll need a [nerd font](https://www.nerdfonts.com/). 
Currently using Jetbrains Mono. Download and install on your system.
