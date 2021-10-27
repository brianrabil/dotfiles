# .dotfiles

This repo is a work in progress, but is in a usable state. These dotfiles are optimized for Arch Linux + i3, but many of them will work on any platform.

### Included Dotfiles

Application      |
-----------------|
Alacritty        |
Bash             |
Git              |
Htop             |
i3               |
i3 Status        |
LazyGit          |
Neofetch         |
npm              |
NeoVim           |
Spacemacs        |
Tmux             |
xLayoutDisplay   |
xProfile         |
zsh              |

### Installation

Install script coming soon.

In the mean time, follow these steps:

1.  Clone this repo to your home directory.

```bash
git clone https://github.com/BrianRabil/.dotfiles.git
```

3. Unstow the dotfiles you would like to use.

```bash
cd ~/.dotfiles
stow bash
stow tmux
stow zsh
// and so on...
```

Easy as that. GNU Stow will create a symlink to the appropriate location.

4. Enjoy! 😉 

