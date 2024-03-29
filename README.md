# dotfiles
# installation
```shell
# COMMON TOOLS:
# -------------
curl
zsh
git
exa
  sudo apt install exa

zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  source ~/.zshrc

fzf
direnv
asdf
Hack Herd Font

starship
  curl -sS https://starship.rs/install.sh | sh
  Add the following to the end of ~/.zshrc:
    eval "$(starship init zsh)"

# EDITORS
neovim
vim-plug
  Install https://github.com/junegunn/vim-plug
  Run in nvim: PlugInstall

# K8s
kubectx + kubens

-----------------

sudo apt update
sudo apt install git

# Create m19v user and group

sudo apt install ansible

See: https://github.com/chelsea/ansible-example-ruby/blob/master/roles/db/tasks/main.yml
```
