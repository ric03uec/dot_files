# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository containing configuration files and setup scripts for various development tools and environments. Configuration files are prefixed with underscores and should be renamed with dots when deployed to `$HOME`.

## Key Commands

### Tmux Configuration
- `./tmux/install.sh` - Initialize tmux configuration (backs up existing configs, copies from repo)
- `./tmux/scripts/resize-adaptable.sh -l main-horizontal -p 66` - Resize tmux panes by percentage

### Vim Setup  
- `./vim/prepVim.sh` - Full vim installation with plugins (removes existing vim, installs from source with Python/Ruby support, sets up Vundle, YCM, powerline)

### VS Code Sync
- `./code/sync.sh` - Copy VS Code settings from `~/.config/Code/User/` to repository

### System Utilities
- `./toggle.sh` - Toggle touchpad on/off (Kubuntu 24.04 compatible)

## Architecture

### Configuration Structure
- Root level: Main shell configs (`_bashrc`, `_zshrc`, `_gitconfig`, `_tmux.conf`)
- `code/`: VS Code settings, keybindings, and spell check dictionaries
- `tmux/`: Complete tmux setup with plugins (tpm, tmux-resurrect) and utility scripts
- `vim/`: Vim configuration with automated plugin installation
- `wezterm.lua`: Wezterm terminal configuration

### Key Features
- **Tmux**: Custom prefix (Ctrl-A), plugin management via tpm, status bar with system info
- **Zsh**: Oh-my-zsh with 'ys' theme, Go development environment variables
- **Vim**: Full-featured setup with Vundle plugin manager, YouCompleteMe, powerline
- **VS Code**: Synchronized settings with spell check support

### Environment Variables (from _zshrc)
- `EDITOR=nvim`
- `TERM=tmux-256color` 
- `GOPATH=$HOME/workspace/go`
- `GO111MODULE=on`

## Installation Pattern
Most setup scripts follow the pattern of backing up existing configurations before installing new ones. The tmux and vim installers are particularly comprehensive, handling dependencies and plugin installation automatically.