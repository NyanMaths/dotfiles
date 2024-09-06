# dotfiles
Behold, my dynamic Hyprland rice !
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/bafb69f7-c0c9-4d9c-8265-24887a87c67f)
Rofi theme :
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/5194d642-b51a-47a6-8d6f-b13a3b7c1344)
Wlogout theme :
![image](https://github.com/NyanMaths/dotfiles/assets/64662422/aaa2aa21-5b5d-4d18-aa34-f16af59273e4)

I am currently fighting against those annoying config, cache and data directories inside of my home folder, so there is a bunch of environment set for this, you may yeet this without any problem.


Almost required software :
  - [rofi-wayland](https://github.com/lbonn/rofi) : app launcher
  - [hyprlock](https://github.com/hyprwm/hyprlock) : stylish lock screen
  - [swww](https://github.com/LGFae/swww) : yes
  - [wl-clip-persist](https://github.com/Linus789/wl-clip-persist) and [wl-clipboard](https://github.com/bugaevc/wl-clipboard) : finally a working clipboard manager
  - [brightnessctl](https://github.com/Hummer12007/brightnessctl) : brightness control
  - [playerctl](https://github.com/altdesktop/playerctl) : media player control
  - [python-pywal](https://github.com/dylanaraps/pywal) : automatic colours for Hyprland (archived, as neofetch...shiet)
  - [xdg-desktop-portal-hyprland](https://github.com/hyprwm/xdg-desktop-portal-hyprland) : portal for screensharing
  - [xdg-desktop-portal-gtk](https://github.com/flatpak/xdg-desktop-portal-gtk) : portal for file picker

Status bar :
  - [ags](https://github.com/Aylur/ags) : Aylur's GTK shell
  - [pipewire](https://gitlab.freedesktop.org/pipewire/pipewire), [bluez](https://github.com/bluez/bluez), [bluez-utils](https://github.com/bluez/bluez) : basic bluetooth support
  - [bun](https://github.com/oven-sh/bun)<sup>AUR</sup> : some JS fuckery
  - [dart-sass](https://github.com/sass/sass) : some CSS fuckery
  - [gnome-bluetooth-3.0](https://gitlab.gnome.org/GNOME/gnome-bluetooth) : for bluetooth applet
  - [hyprpicker](https://github.com/hyprwm/hyprpicker) : color picker for Hyprland
  - [optional] [python-gpustat](https://github.com/wookayin/gpustat)<sup>AUR</sup> : get nvidia GPU usage on dashboard
  - [optional] [matugen](https://github.com/InioX/matugen)<sup>AUR</sup> : a palette generator
  - [optional] [gpu-screen-recorder](https://git.dec05eba.com/gpu-screen-recorder)<sup>AUR</sup> : maybe this can work, but not for me

Old status bar :
  - [waybar](https://github.com/Alexays/Waybar) : wabar :)
  - [wlogout](https://github.com/ArtsyMacaw/wlogout) : session menu
  - [mako](https://github.com/emersion/mako) : notifications daemon
  - [blueman](https://github.com/blueman-project/blueman)
  - [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet)
  - [gawk](https://git.savannah.gnu.org/cgit/gawk.git) : arithmetics for VRAM usage query

Optional software :
  - [greetd](https://github.com/kennylevinsen/greetd) : a minimalistic login manager
  - [alacritty](https://github.com/alacritty/alacritty) : terminal emulator
  - [nautilus](https://gitlab.gnome.org/GNOME/nautilus) : file manager
  - [vesktop](https://github.com/Vencord/Vesktop) : best wayland discord client so far, but breaks ToS
  - [btop](https://github.com/aristocratos/btop) & [resources](https://github.com/nokyan/resources) : TUI & GUI system monitors
  - [grimblast-git](https://github.com/hyprwm/contrib)<sup>AUR</sup> : a really good screenshot utility for Hyprland
  - [kvantum](https://github.com/tsujan/Kvantum) & [kvantum-qt5](https://github.com/tsujan/Kvantum) : for unified Qt and GTK themes


<h1>Setup</h1>

<h2>Login manager</h2>

You should use autologin feature from your login manager as my config will lock your session automatically on startup because hyprlock is classier than any login manager's config known to me.
<br />In that case,do not forget to automatically launch ```dbus-run-session Hyprland``` and not just ```Hyprland```, otherwise some things will break, especially screenshare.
<br />Edit ```/etc/greetd/config.toml``` :
```
[terminal]
vt = 1

[initial_session]
command = "dbus-run-session Hyprland"
user = "USERNAME"

[default_session]
command = "agreety --cmd/bin/TERMINAL"
user = "greeter"

# it can restart Hyprland automatically if you just want to reload it when logging out, in that case use this one :
#[default_session]
#command = "dbus-run-session Hyprland"
#user = "USERNAME"
```
<h2>Rice</h2>

Please replace eDP-1 with your monitor's name from ```hyprctl monitors``` in ```.config/hypr/hyprpaper.conf```, thanks to a bug of Hyprland which prevents IPC from well-behaving for now.
<br />You shall run set-wallpaper once in order to get your dynamic rice accordingly.
<br />Before first launch of this script, your colours will be defaults and there will be no wallpaper. Just ```~/.local/bin/set-wallpaper /your/wallpaper/path.png```.
<br />Yeah, only static images are supported by hyprlock at the moment, so forget about GIF, animated WEBP or AVIF. Just pray for animated wallpaper support.
<br />Or pray so that I finally write a stupid shell script to extract the first frame of an animated wallpaper to make hyprlock happy, but I'm too lazy :3.

<h2>Functionalities</h2>

<h3>ZSH environment</h3>

As I have to set them outside of Hyprland's config, here they are :
<br />Edit ```/etc/zsh/zshenv``` :
```
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache

export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
```

<h3>Touchpad and keyboard toggles</h3>

I made two scripts for toggling integrated touchpad and keyboard for laptops, but their name can differ from one computer to another.
<br />That is why you should ```hyprctl devices```, look for your integrated devices names and replace ```at-translated-set-2-keyboard``` and ```elan1203:00-04f3:307a-touchpad``` with yours in ```.config/hypr/scripts/keyboard-toggle.sh```, ```.config/hypr/scripts/touchpad-toggle.sh``` and ```.config/hypr/input.conf```.
<br />That way, you will be able to easily access these controls in wabar and by keybinds (```super+shift+k``` and ```xf86touchpadtoggle```)

<h3>The green one</h3>

I set up hardware acceleration with nvidia but disabled rendering though it, because my monitor is not wired to my dGPU, so you might want to tweak these settings, in that case, get to ![the Hyprland wiki](https://wiki.hyprland.org/Nvidia) for setting up this despicable thing. I left a config file for this, but be careful as I do not update it often : ```.config/hypr/nyavidia.conf```.
<br />For people who does not have nvidia-smi, wabar should have missing parts : this is because the GPU temperature section cannot be displayed. Well, just remove ```custom-gpu``` and ```custom-vram``` modules and round corners in ```.config/waybar/``` to make it look pretty again.

<h3>Turbo boost toggle</h3>

This one is only supposed to work for intel CPUs using pstate driver, without any guarantee. This was painful and I do not plan on making it it better for now.
