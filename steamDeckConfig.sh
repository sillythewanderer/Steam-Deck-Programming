sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate holo
sudo pacman-key --populate archlinux
sudo pacman -S make linux-headers glibc
sudo pacman -S alsa-lib mesa libx11 libxrandr libxi libxcursor libxinerama
sudo pacman -S zig
sudo pacman -S raylib
sudo pacman -S nvim
exit
