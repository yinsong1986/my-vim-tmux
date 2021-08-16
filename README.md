# Getting Started
    
    # install zsh
    ## on CentOS
    sudo yum update && sudo yum -y install zsh
    ## on MACOS
    brew install zsh
    
    # install ohmyzsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # customize tmux and vim
    git clone https://github.com/yinsong1986/dev-env.git
    ln -sf $(pwd)/dev-env/.vimrc ~/.vimrc
    ln -sf $(pwd)/dev-env/.tmux.conf ~/.tmux.conf
    
And run: `:PlugInstall` in vim.

