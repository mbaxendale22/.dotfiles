# Install Guides

## Linux (Debian)

- Utilities
```bash
sudo apt-get install ninja-build gettext cmake unzip curl git ripgrep fd-find
```
```bash
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
- TMUX with TPM 
```bash
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- Dotfiles
```bash
git clone 
```


- Set up SSH KEY for github

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519
```
