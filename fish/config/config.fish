set fish_path $HOME/.osx-setup/fish

set -gx LC_ALL en_US.UTF-8 
set -gx HOMEBREW_GITHUB_API_TOKEN d2d07383690d9642289bc0eec524f585dce926c8

set fish_theme bobthefish

set fish_plugins theme jump git-flow chruby vi-mode brew tmux

eval sh $HOME/.config/base16-shell/base16-default.dark.sh

if not contains $fish_path/functions/ $fish_function_path
  set fish_function_path $fish_path/functions/ $fish_function_path
end

if not set -q fish_custom
  set -g fish_custom $fish_path/custom
end

import plugins/$fish_plugins themes/$fish_theme

# Source all files inside custom directory.
for load in $fish_custom/*.load
  . $load
end

# Prepend extracted user functions so they have the highest priority.
set fish_function_path $user_function_path $fish_function_path

# Make sure to exit with $status of 1 when reloading the framework.
or true
tmux new -s unicorns
