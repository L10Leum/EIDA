#!/bin/bash
echo "installing Docker"
exec sudo pacman -S docker
exec sudo usermod -aG docker USERNAME
exec sudo systemctl start docker
exec sudo systemctl enable docker
clean
echo "check to work"
exec docker run hello-world
done