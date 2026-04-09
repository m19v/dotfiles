# 🚀 m19v's dotfiles

Managed with **chezmoi** (files) and **Ansible** (system packages).

## 💻 Quick Start (New Machine)

To provision a fresh Linux machine with dotfiles, run:

```bash
sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin init --apply m19v
```
