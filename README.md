# 🧠 Karma Dotfiles

A collection of my personal dotfiles and configuration files for a clean, modern Arch Linux setup with Hyprland.

## 🚀 Quick Install

The fastest way to install my dotfiles is using the one-liner:

```bash
bash <(curl -s https://raw.githubusercontent.com/recule556688/karma_dotfiles/main/install.sh)
```

## 📋 Prerequisites

- **Arch Linux** (or Arch-based distribution)
- **Internet connection** for downloading packages
- **sudo privileges** for package installation

## 🛠️ Manual Installation

If you prefer to install manually or the one-liner doesn't work:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/recule556688/karma_dotfiles.git
   cd karma_dotfiles
   ```

2. **Run the installer:**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

## 📦 What's Included

### Core Components
- **Hyprland** - Modern Wayland compositor
- **ML4W Hyprland** - Pre-configured Hyprland setup
- **yay** - AUR helper for easy package management

### Configuration Files
- Desktop environment configurations
- Application settings
- System preferences

## 🎯 Installation Options

The installer provides two main options:

1. **Install yay + ML4W** - Sets up the base Hyprland environment
2. **Install dotfiles** - Applies my personal configurations

## 🔧 Post-Installation

After installation:

1. **Restart your system** or log out and back in
2. **Select Hyprland** from your display manager
3. **Customize** the configurations to your liking

## 📁 Repository Structure

```
dotfiles/
├── install.sh          # Main installation script
├── wallpapers/         # Collection of wallpapers
│   ├── bullet-space.jpg
│   ├── hyprland.jpg
│   ├── mountain.jpg
│   └── ... (more wallpapers)
└── README.md           # This file
```

## 🎨 Wallpapers

The repository includes a curated collection of wallpapers:
- Minimal and modern designs
- Dark and light themes
- Various resolutions

## 🔄 Backup

The installer automatically creates a backup of existing dotfiles:
- Backup location: `~/dotfiles_bak_[timestamp]`
- Your existing configurations are preserved

## 🐛 Troubleshooting

### Common Issues

1. **Permission denied:**
   ```bash
   chmod +x install.sh
   ```

2. **yay installation fails:**
   - Ensure you have `base-devel` and `git` installed
   - Check your internet connection

3. **ML4W setup issues:**
   - Make sure you're on Arch Linux
   - Try running `ml4w-hyprland-setup` manually

### Getting Help

If you encounter issues:
1. Check the [Arch Wiki](https://wiki.archlinux.org/)
2. Review the [Hyprland documentation](https://wiki.hyprland.org/)
3. Open an issue on this repository

## 🙏 Acknowledgments

- [ML4W](https://github.com/MatthiasLee/ML4W) for the Hyprland setup
- The Arch Linux community
- The Hyprland developers

---

**Happy hyprlanding! 🎉** 