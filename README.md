# Getting Started
    
    # install zsh
    ## on CentOS
    sudo yum update && sudo yum -y install zsh
    ## on MACOS
    brew install zsh
    
    # install ohmyzsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # install TPM (tmux plugin manager).
    See https://github.com/tmux-plugins/tpm#installation for installation instructions.    

    # customize tmux and vim
    brew install the_silver_searcher
    git clone https://github.com/yinsong1986/my-vim-tmux.git
    ln -sf $(pwd)/my-vim-tmux/.vimrc ~/.vimrc
    ln -sf $(pwd)/my-vim-tmux/.tmux.conf ~/.tmux.conf

    
And run: `:PlugInstall` in vim.

