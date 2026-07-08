# Atualizar sistema
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean

# Ferramentas de desenvolvimento
sudo apt install -y \
git curl wget build-essential dkms perl gcc make \
default-libmysqlclient-dev libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev \
llvm libncurses-dev xz-utils tk-dev \
libffi-dev liblzma-dev \
python3-openssl python3-dev python3-venv

# Instalar ZSH
sudo apt install -y zsh
chsh -s "$(which zsh)"

# Instalar Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar plugins do Oh My Zsh

# Zsh Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Zsh Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Depois editar ~/.zshrc e alterar:
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)

# Configuração da Dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.0
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces false
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true