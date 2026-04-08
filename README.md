# 🚀 m19v's dotfiles

Managed with **chezmoi** (files) and **Ansible** (system packages).

## 💻 Quick Start (New Machine)

To provision a fresh Linux machine with dotfiles, run:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:m19v/dotfiles.git
