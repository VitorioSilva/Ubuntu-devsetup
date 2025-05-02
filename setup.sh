# atualizar os pacotes
sudo apt update
sudo apt full-upgrade -y

# pacotes
sudo apt install -y git curl build-essential dkms perl wget gcc make \
default-libmysqlclient-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev \
libffi-dev liblzma-dev python3-openssl

# Limpar histórico do Bash
history -c
cat /dev/null > ~/.bash_history
rm -f ~/.bash_history

# Terminal ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)

# Dock (barra de aplicativos)
# parte inferior da tela
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 48
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.25
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces false
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DOTS'
gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 18'
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
