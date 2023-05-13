if ! [ $(which zsh) ]; then
    echo "Installing ZSH"
     sudo apt update & sudo apt install zsh -y
fi

if ! [ $(which git) ]; then
    echo "Installing GIT"
     sudo apt update & sudo apt install git -y
fi

if ! [ $(which wget) ]; then
    echo "Installing wget"
     sudo apt update & sudo apt install git -y
fi

if ! [ $(which curl) ]; then
    echo "Installing curl"
     sudo apt update & sudo apt install curl -y
fi

sudo chsh $USER -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd $HOME
wget https://github.com/Moe-Sherif/pretty-term/raw/main/.zshrc
wget https://github.com/Moe-Sherif/pretty-term/raw/main/.p10k.zsh
sudo cd /usr/share/fonts
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
echo "Change your terminal font to Meslo NF to be able see the icons normally"
zsh