red="\e[31m"
green="\e[32m"
yellow="\e[93m"
resetColour="\e[0m"
printf "\n${green}Welcome :)${resetColour}\n"
printf "\n${red}Read The Instructions!${resetColour}\n"
printf "\nthis script prepares the steam deck for being used more like a normal archlinux PC.\n"
printf "\n${yellow}Install basic Linux stuff? [y/n] (Default = n):${resetColour} "
read y
if test $y = y
then
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate holo
sudo pacman-key --populate archlinux
sudo pacman -S make linux-headers glibc

else 
printf "\nyou entered \"n\" (or an invalid input)\n"
fi

printf "\n${yellow}Would you like to install zig? (a compiler and build system for C, C++, and the zig programming language) [y/n] (Default = n):${resetColour} "
read z
if test $z = y
then
sudo pacman -S zig
else
printf "you entered [n], or an invalid input. continuing.\n"
fi

printf "\n${yellow}Would you like to download raylib? (a game programming framework for c, c++, and zig) [y/n] (Default = n):${resetColour} "
read n
if test $n = y
then
sudo pacman -S raylib
else
printf "\nyou entered \"n\" (or a invalid input)\n"
fi

printf "\n${green}This script is done :)${resetColour}\n"

