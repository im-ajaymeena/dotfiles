#!/bin/bash

# Get the current workspace folder from the VSCode environment
workspace_folder=$(pwd)

# Create the .bash_workspace file with the correct path to .bash_history
echo "# Source the default .bashrc" > "${workspace_folder}/.bashrc_workspace"
echo "if [ -f ~/.bashrc ]; then" >> "${workspace_folder}/.bashrc_workspace"
echo "    . ~/.bashrc" >> "${workspace_folder}/.bashrc_workspace"
echo "fi" >> "${workspace_folder}/.bashrc_workspace"
echo "HISTFILE=\"${workspace_folder}/.bash_history_workspace\"" >> "${workspace_folder}/.bashrc_workspace"

echo "" >> "${workspace_folder}/.bash_history_workspace"
