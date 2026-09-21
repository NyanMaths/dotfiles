local colours = require((os.getenv("XDG_CACHE_HOME") or "~/.cache") .. "/matugen/hyprland-colors.lua")


hl.config({
	general = {
		gaps_in  = 2,
		gaps_out = 3,
		border_size = 2,
	col = {
			active_border = { colors = { colours.primary, colours.inverse_primary } },
			inactive_border = colours.background,
		},
	},	
	decoration = {
		rounding = 5,
		inactive_opacity = 1.0,

		blur = {
			enabled = true,
			variant = kawase,
			xray = true,

			size = 3,
			passes = 2,
			vibrancy = 1.0,
			ignore_opacity = false,
		},

		shadow = {
			enabled = false,
		},
	},
	animations = {
		enabled = true,
	},
	misc = {
		animate_mouse_windowdragging = true,
		animate_manual_resizes = true,
	},
})

hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("funnyQuickStart", { type = "bezier", points = { { 0, 1.5 }, { 0.49, 0.91 } } })
hl.curve("sussyExponential", { type = "bezier", points = { { 0.06, 0.33 }, { 0.22, 0.98 } } })

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 6,
	bezier = "funnyQuickStart",
})
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 7,
	bezier = "default",
	style = "popin 80%",
})
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 10,
	bezier = "default",
})
hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 8,
	bezier = "default",
})
hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 7,
	bezier = "default",
})
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "sussyExponential",
})
hl.animation({
	leaf = "fadeDpms",
	enabled = true,
	speed = 8,
	bezier = "sussyExponential",
})


-- Wallpaper utility startup :
hl.on("hyprland.start", function()
	hl.exec_cmd("~/.local/bin/wallpaper set ~/.cache/current-wallpaper")
end)


-- Change terminal's opacity to be able to see this adorable Hypr-chan :
hl.window_rule({
	name = "uwu",
	match = {
		class = "com.mitchellh.ghostty",
	},
	opacity = 0.97,
})

hl.layer_rule({
	name = "rofi-blur",
	match = {
		namespace = "rofi",
	},
	blur = true,
	xray = false,
	
})

-- uWu
hl.layer_rule({
	name = "invasive-activate-linux",
	match = {
		namespace = "quickshell",
	},
	above_lock = 1,
})


------------------ Ecosystem  ------------------


hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")


hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "28")

hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "28")

hl.on("config.reloaded", function()
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 28")
end)
