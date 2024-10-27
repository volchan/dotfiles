# Dotfiles Repository

This repository contains my personal configuration files (dotfiles) managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

1. Clone the repository:

  ```sh
  git clone https://github.com/yourusername/dotfiles.git
  cd dotfiles
  ```

2. Run the setup script:

  ```sh
  sh ./scripts/setup.sh
  ```

  The installation script will install GNU Stow if it is not already installed.

3. apply all configuration files:

  ```sh
  task apply:all
  ```
