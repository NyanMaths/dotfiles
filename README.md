# dotfiles
Behold, my dynamic Hyprland rice !
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/bafb69f7-c0c9-4d9c-8265-24887a87c67f)
Rofi theme :
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/5194d642-b51a-47a6-8d6f-b13a3b7c1344)
Wlogout theme :
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/aaa2aa21-5b5d-4d18-aa34-f16af59273e4)


Almost required software :
  - [rofi-wayland](https://github.com/lbonn/rofi) : app launcher
  - [hyprlock](https://github.com/hyprwm/hyprlock) : stylish lock screen
  - [hyprpaper](https://github.com/hyprwm/hyprpaper) : yes
  - [hypridle](https://github.com/hyprwm/hypridle) : for good sleep and lock behaviours (possibly broken)
  - [wl-clip-persist](https://github.com/Linus789/wl-clip-persist)<sup>AUR</sup> : finally a decent clipboard manager
  - [mako](https://github.com/emersion/mako) : notifications daemon
  - [brightnessctl](https://github.com/Hummer12007/brightnessctl) : brightness control
  - [playerctl](https://github.com/altdesktop/playerctl) : media player control
  - [python-pywal](https://github.com/dylanaraps/pywal) : automatic colours for Hyprland (archived, as neofetch... shiet)
  - [xdg-desktop-portal-hyprland](https://github.com/hyprwm/xdg-desktop-portal-hyprland) : portal for screensharing
  - [xdg-desktop-portal-gtk](https://github.com/flatpak/xdg-desktop-portal-gtk) : portal for file picker

Status bar :
  - [waybar](https://github.com/Alexays/Waybar) : wabar :)
  - [blueman](https://github.com/blueman-project/blueman)
  - [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet)

Optional software :
  - [greetd](https://github.com/kennylevinsen/greetd) : a minimalistic login manager
  - [alacritty](https://github.com/alacritty/alacritty) : terminal emulator
  - [nautilus](https://gitlab.gnome.org/GNOME/nautilus) : file manager
  - [vesktop](https://github.com/Vencord/Vesktop) : best wayland discord client so far, but breaks ToS
  - [btop](https://github.com/aristocratos/btop) & [resources](https://github.com/nokyan/resources) : TUI & GUI system monitors
  - [grimblast-git](https://github.com/hyprwm/contrib)<sup>AUR</sup> : a really good screenshot utility for Hyprland


You should use autologin feature from your login manager as my config will lock your session automatically on startup because hyprlock is classier than any login manager's config known to me.
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
