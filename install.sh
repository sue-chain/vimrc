# vim 安装脚本
# 1. 安装bundle
if [ ! -d ~/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/vundle
fi

# copy vim to .vimrc
cp vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
  fi

# cp  ultisnips
cp -rf vim/UltiSnips ~/.vim/bundle/

# open vim install bundles :BundleInstalls
