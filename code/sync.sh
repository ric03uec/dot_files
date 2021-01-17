#!/bin/bash -e

readonly CONFIG_DIR="$HOME/.config/Code/User"
declare -a files_list=(
  'settings.json'
  'keybindings.json'
)

for file in "${files_list[@]}"; do
  cp -vr $CONFIG_DIR/$file $PWD
done

