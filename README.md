# dotfiles
Behold, my dynamic Hyprland rice !

Almost required software :
  - rofi-lbonn-wayland(AUR) : app launcher
  - hyprlock : stylish lock screen
  - hyprpaper : yes
  - hypridle : for good sleep and lock behaviours (possibly broken)
  - wl-clip-persist(AUR) : finally a decent clipboard manager
  - mako : notifications daemon
  - brightnessctl : brightness control
  - playerctl : media player control
  - python-pywal : automatic colours for Hyprland

Status bar :
  - waybar : well, yes
  - blueman
  - network-manager-applet

Optional software :
  - greetd : a minimalistic login manager
  - alacritty : terminal emulator
  - nautilus : file manager
  - vesktop : best wayland discord client so far, but breaks ToS
  - btop & resources : TUI & GUI system monitors
  - flameshot-git(AUR) : a really good screenshot utility, official package currently wayland-broken for me though


You should use autologin feature from your login manager as Hyprland will lock your session automatically on startup because hyprlock is classier than any login manager's config known to me.
In that case,do not forget to automatically launch ```dbus-run-session Hyprland``` and not just ```Hyprland```, otherwise some things will beak, especially screenshare.
Edit ```/etc/greetd/config.toml``` :
```
[terminal]
vt = 1

[initial_session]
command = "dbus-run-session Hyprland"
user = "USERNAME"

[default_session]
command = "agreety --cmd /bin/TERMINAL"
user = "greeter"
```

You shall run set-wallpaper once in order to get your dynamic rice accordingly. Before first launch of this script, your colours will be defaults and there will be no wallpaper. Just .local/bin/set-wallpaper /your/wallpaper/path.png.
Yeah, only PNG codec is supported by hyprlock at the moment, so forget about WEBP and JPG.
