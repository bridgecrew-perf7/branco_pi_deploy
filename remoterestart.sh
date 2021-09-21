#!/bin/bash

while true; do
    read -p "Do you have want to reboot (y) or shutdown (n)?" yn
    case $yn in
        [Yy]* ) sudo reboot;;
        [Nn]* ) sudo shutdown -r;;
        * ) echo "Please answer yes to reboot or no to shutdown.";;
    esac
done

