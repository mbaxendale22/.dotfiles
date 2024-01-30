# Install Guides

## Linux (Debian)

- Utilities
```bash
sudo apt install ninja-build gettext cmake unzip curl git ripgrep fd-find fzf tree tmux
```

-Neovim
Build from source
```bash
git clone https://github.com/neovim/neovim
```

```bash
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```
- 
- TMUX with TPM (installed in utilities) 
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

-- NodeJs
```bash
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

- Set up SSH KEY for github
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519
```

- Dotfiles
```bash
git clone git@github.com:mbaxendale22/.dotfiles.git 
cp -r ~/.dotfiles/new_nvim_config/nvim ~ 
```
