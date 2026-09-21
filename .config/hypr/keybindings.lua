-- Get RTFM-ed at https://wiki.hyprland.org/Configuring/Keywords

local main_mod = "SUPER"
local secondary_mod = "CTRL"


------------------  App launchers  ------------------


hl.bind(main_mod .. " + t", hl.dsp.exec_cmd("ghostty"))
hl.bind(main_mod .. " + b", hl.dsp.exec_cmd("firefox"))
hl.bind(main_mod .. " + SHIFT + b", hl.dsp.exec_cmd("firefox"))
hl.bind(main_mod .. " + ALT + b", hl.dsp.exec_cmd("torbrowser-launcher"))
hl.bind(main_mod .. " + e", hl.dsp.exec_cmd("nautilus --new-window"))
hl.bind(main_mod .. " + m", hl.dsp.exec_cmd("deezer-desktop"))
hl.bind(main_mod .. " + y", hl.dsp.exec_cmd("freetube"))
hl.bind(main_mod .. " + d", hl.dsp.exec_cmd("vesktop"))
hl.bind(main_mod .. " + SHIFT + d", hl.dsp.exec_cmd("element-desktop"))
hl.bind(main_mod .. " + v", hl.dsp.exec_cmd("bottles"))
hl.bind(main_mod .. " + SHIFT + m", hl.dsp.exec_cmd("prismlauncher"))
hl.bind(main_mod .. " + c", hl.dsp.exec_cmd("vscodium"))
hl.bind(main_mod .. " + a", hl.dsp.exec_cmd("ghostty -e btop"))
hl.bind(main_mod .. " + SHIFT + a", hl.dsp.exec_cmd("resources"))
hl.bind(main_mod .. " + ALT + q", hl.dsp.exit())
hl.bind(main_mod .. " + o", hl.dsp.exec_cmd("obs"))

hl.bind("SUPER + super_l", hl.dsp.exec_cmd("pkill -TERM rofi || rofi -show-icons -show drun"), { release = true })
-- bind = $main_mod $secondary_mod, w, hyprexpo:expo, toggle

hl.bind(main_mod .. " + SHIFT + w", hl.dsp.exec_cmd("pkill waybar || waybar"))

hl.bind("print", hl.dsp.exec_cmd("grimblast --freeze copy area"), { locked = true })


------------------  Window controls  ------------------


hl.bind(main_mod .. " + q", hl.dsp.window.close(), { repeating = true })
hl.bind(main_mod .. " + SHIFT + q", hl.dsp.exec_cmd("hyprctl kill"))
hl.bind(main_mod .. " + z", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(main_mod .. " + SHIFT + z", hl.dsp.window.fullscreen_state({ internal = -1, client = 2, action = "toggle" }))
hl.bind(main_mod .. " + CTRL + z", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))


------------------  Workspace controls  ------------------


hl.bind(main_mod .. " + left", hl.dsp.focus({ workspace = -1 }), { repeating = true })
hl.bind(main_mod .. " + right", hl.dsp.focus({ workspace = "+1" }), { repeating = true })
hl.bind(main_mod .. " + space", hl.dsp.focus({ workspace = 0 }))
hl.bind(main_mod .. " + up", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(main_mod .. " + down", hl.dsp.window.move({ workspace = -1 }))

hl.bind(main_mod .. " + tab", hl.dsp.window.cycle_next({ next = true }), { repeating = true })
hl.bind(main_mod .. " + f", hl.dsp.window.float({ action = "toggle" }))

hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize())

hl.bind(main_mod .. " + kp_left", hl.dsp.focus({ direction = "left" }))
hl.bind(main_mod .. " + kp_right", hl.dsp.focus({ direction = "right" }))
hl.bind(main_mod .. " + kp_up", hl.dsp.focus({ direction = "up" }))
hl.bind(main_mod .. " + kp_begin", hl.dsp.focus({ direction = "down" }))

hl.bind(main_mod .. " + ampersand", hl.dsp.focus({ workspace = 1 }))
hl.bind(main_mod .. " + eacute", hl.dsp.focus({ workspace = 2 }))
hl.bind(main_mod .. " + quotedbl", hl.dsp.focus({ workspace = 3 }))
hl.bind(main_mod .. " + apostrophe", hl.dsp.focus({ workspace = 4 }))
hl.bind(main_mod .. " + parenleft", hl.dsp.focus({ workspace = 5 }))
hl.bind(main_mod .. " + minus", hl.dsp.focus({ workspace = 6 }))
hl.bind(main_mod .. " + egrave", hl.dsp.focus({ workspace = 7 }))
hl.bind(main_mod .. " + underscore", hl.dsp.focus({ workspace = 8 }))
hl.bind(main_mod .. " + ccedilla", hl.dsp.focus({ workspace = 9 }))
hl.bind(main_mod .. " + agrave", hl.dsp.focus({ workspace = 10 }))


------------------  Media controls  ------------------


hl.bind("xf86audioraisevolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +3%"), { locked = true, repeating = true })
hl.bind("xf86audiolowervolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -3%"), { locked = true, repeating = true })
hl.bind("xf86audiomute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("xf86audiomicmute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle"), { locked = true, repeating = true })

hl.bind("xf86audioplay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("xf86audionext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("xf86audioprev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })


------------------  Session controls  ------------------


hl.bind(main_mod .. " + SHIFT + l", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind(main_mod .. " + ALT + l", hl.dsp.dpms({ action = "toggle" }), { locked = true })
hl.bind("xf86suspend", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })


------------------  Miscellaneous  ------------------


hl.bind("xf86monbrightnessup", hl.dsp.exec_cmd("~/.local/bin/backlight 2%+"), { locked = true, repeating = true })
hl.bind("xf86monbrightnessdown", hl.dsp.exec_cmd("~/.local/bin/backlight 2%-"), { locked = true, repeating = true })
hl.bind(main_mod .. " + mouse_down", hl.dsp.exec_cmd("brightnessctl set 10%-"), { locked = true })
hl.bind(main_mod .. " + mouse_up", hl.dsp.exec_cmd("brightnessctl set 10%+"), { locked = true })

hl.bind("xf86touchpadtoggle", hl.dsp.exec_cmd("~/.local/bin/device-toggle.sh uniw0001:00-093a:0255-touchpad"), { locked = true })
hl.bind(main_mod .. " + SHIFT + k", hl.dsp.exec_cmd("~/.local/bin/device-toggle.sh at-translated-set-2-keyboard"), { locked = true })

-- E
hl.bind(main_mod .. " + w", hl.dsp.exec_cmd("~/.local/bin/wallpaper set ~/.config/hypr/default-wallpaper.png"), { locked = true })
