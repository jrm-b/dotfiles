export EXTENDED_HISTORY=on
export HISTTIMEFORMAT="%F %T - "
export HISTCONTROL=ignoreboth
export HISTIGNORE="clear:history:* --help:"

if [ -z "$WAYLAND_DISPLAY" ]; then
	export WAYLAND_DISPLAY=hyprland
	exec hyprland
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
