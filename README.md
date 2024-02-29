#### :warning: Wayland on Nvidia graphics card is very finicky, you may encounter issues :warning:
#### :warning: I am not responsible for any damage to your OS installation :warning:

# Creaous' Dotfiles
## About

This repository contains the dotfiles used in my Arch Linux NVIDIA Hyprland setup. These files are essential for setting up your system in the same way as mine. They include configurations for various tools and applications, as well as scripts and other utilities to make your life easier.

## System Specs

This setup is specifically designed for the following system specifications:

- Computer: 82Y9 Legion Slim 5 16APH8
- Operating System: Arch Linux
- Graphics Card: NVIDIA GeForce RTX 4060 Max-Q / Mobile 
- Environment: Hyprland (Wayland)
- CPU: AMD Ryzen 7 7840HS (16) @ 5.137GHz
- Memory: 16GB
- Kernel: 6.7.6-arch1-1

Also tested with:

- Computer: 82YA Legion Slim 5 16IRH8
- Operating System: Arch Linux
- Graphics Card: NVIDIA GeForce RTX 4050 Max-Q / Mobile 
- Environment: Hyprland (Wayland)
- CPU: 13th Gen Intel i5-13500H (16) @ 4.700GHz
- Memory: 16GB
- Kernel: 6.7.6-arch1-1

Please note that while these dotfiles may work on other systems, they are specifically tailored to this setup and may not function as expected on different hardware or software configurations.

## Dependencies
This setup assumes that you have the following software installed:
- git
- bash
- hyprland
- hyprpaper
- floorp-bin
- poweralertd
- waybar
- xfce-polkit
- swayidle
- wl-clipboard
- nvidia-settings
- hyprpicker
- cliphist
- konsole
- grim
- slurp
- xwaylandvideobridge-git
- backlight_control
- swaylock-effects
- qt6ct
- ddcutil

For your convenience, these are included in the one-line command below.

## How to Use

To use these dotfiles, you can run the one-liner script:

```bash
curl -L https://raw.githubusercontent.com/Creaous/dotfiles/main/one-liner.sh | sh
```

Please note that this will overwrite any existing files in those locations.

## Contributing
If you have suggestions for improving these dotfiles, please open an issue or submit a pull request.

## Reporting bugs
Please create an issue or submit a pull request to fix these issues.

## License
These dotfiles are released under the MIT License. See `LICENSE` for more details.
