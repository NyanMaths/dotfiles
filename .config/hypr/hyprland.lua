----------------------------------------------------------
-- Welcome to Hyprland, my compositor of choice !
-- Just RTFM if lost and 'zink Hyprland' to be happy.
-- Bruh that one was cursed, but it just works.
----------------------------------------------------------


------------------ Basics  ------------------


-- Load environment variables and configuration :
require("environment")

-- Load monitors with default settings, overrides likely to be needed, better keep them in custom.lua config :
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1",
})

-- Basic input settings :
require("input")

-- Artistic keybindings :
require("keybindings")

-- Funny *touch* features :
require("gestures")


------------------ Nyavidia moment  ------------------


-- NVIDIA on linux can be a pain in the a..
-- This config allows to use nvidia for hardware acceleration and games (typical hybrid laptops)
-- and enables VRR, at least I hope so.
-- For further usage of the dGPU, you should set it as primary with AQ_DRM_DEVICES in advanced optimus setups.
require("nyavidia")


------------------  Login manager moment  ------------------


-- Lock session because of a sussy greetd config of mine
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprlock")
end)


------------------  Hyprland behaviours  ------------------


hl.config({
	general = {
		no_focus_fallback = true,
	},
	dwindle = {
		preserve_split = true,
	},
	misc = {
		-- If your screen starts blinking, disable this before getting a stroke.
		vrr = 1,

		-- Already defined as Hypr-chan my wallpaper.
		disable_hyprland_logo = true,
		disable_splash_rendering = true,

		-- This fucker just kept annoying me on Minecraft.
		enable_anr_dialog = false,
	},
	render = {
		cm_enabled = true,
		direct_scanout = 0,
		send_content_type = false,
		new_render_scheduling = true,
	},
	xwayland = {
		force_zero_scaling = true, -- I hate XWayland
	},
})


------------------  Autostart utilities  ------------------


hl.on("hyprland.start", function()
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("wl-clip-persist --clipboard regular")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("waybar & nm-applet --indicator & sleep 1 && blueman-applet")
	hl.exec_cmd("mako")
end)


------------------  Appearance settings  ------------------


require("rice")


------------------ Tearing  ------------------


-- Enforce tearing in all fullscreen apps (can be painful).
-- requires("tearing")


------------------  Device-specific non-tracked config  ------------------


require("custom")
