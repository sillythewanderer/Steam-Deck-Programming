printf "\ninstall lvim? [y/n]: "
read y
if test $y = y
then
printf "\ninstalling\n"
sudo pacman -S neovim
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
else
printf "\nn\n"
fi
