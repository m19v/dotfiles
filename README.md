# dotfiles
# installation
```shell
# COMMON TOOLS:
# -------------
curl
zsh
  apt install zsh
oh my zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
  sudo add-apt-repository ppa:neovim-ppa/stable -y
  sudo add-apt-repository ppa:neovim-ppa/unstable -y           # add repo
  sudo add-apt-repository -r ppa:neovim-ppa/stable             # remove repo
  grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/               # check repo
  sudo apt install neovim
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
