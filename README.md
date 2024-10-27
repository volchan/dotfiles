# Dotfiles Repository

This repository contains my personal configuration files (dotfiles) managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

1. Clone the repository:

  ```sh
  git clone https://github.com/yourusername/dotfiles.git
  cd dotfiles
  ```

2. Install GNU Stow if you haven't already:

  ```sh
  sudo apt-get install stow  # For Debian-based systems
  # or
  brew install stow  # For macOS
  ```

3. Run GNU Stow to create symlinks for the desired configuration:

  ```sh
  stow . # Symlink all configuration files
  # or
  stow <package_name> # Symlink configuration files for a specific package
  ```
