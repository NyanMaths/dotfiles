hl.monitor({
	output = "desc:BOE NE160QDM-NM9",
	mode = "2560x1600@240",
	--mode = preferred
	position = "0x0",
	sdrbrightness = 0.5,
	sdrsaturation = 0.99,
	bitdepth = 10,
	cm = "srgb",
	vrr = 0,
	scale = "1.0",
	sdr_min_luminance = 0.005,
	sdr_max_luminance = 1000,
	sdr_eotf = "2",
	disabled = false,
})

-- external monitor
hl.monitor({
	output = "desc:Acer Technologies VG271U M3 1322131231233",
	mode = "2560x1440@180",
	position = "-2560x100",
	bitdepth = 10,
	--cm = hdr
	sdrsaturation = 2.3,
	vrr = 0,
	disabled = false,
})

------------------  Random apps launch  ------------------


hl.on("hyprland.start", function()
	hl.exec_cmd("otd-daemon")
	hl.exec_cmd("/opt/tuxedo-control-center/tuxedo-control-center --tray")
end)


------------------  Goofy aah binds  ------------------

local main_mod = "SUPER"
local secondary_mod = "CTRL"

hl.bind(secondary_mod .. " + SHIFT + up", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(secondary_mod .. " + SHIFT + right", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind(secondary_mod .. " + SHIFT + left", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- boys with autism be like :
hl.bind("SUPER + CTRL + SHIFT + ALT + s", hl.dsp.exec_cmd("start-hyprland"))

hl.bind("SUPER + ALT + f6", hl.dsp.exec_cmd("tuxedo-control-center"))


------------------  Goofy aah environment  ------------------


hl.env("ANV_DEBUG", "video-decode,video-encode")
hl.env("OSU_SDL3", "0")


------------------  Random things  ------------------


hl.window_rule({
	name = "ifuckinghateelectron",
	match = {
		class = "vestktop",
	},
	opacity = "1.0",
})

hl.window_rule({
	name = "eeee",
	match = {
		class = "firefox",
	},
	no_screen_share = false,
})

hl.window_rule({
	match = {
		float = 1,
		class = "^(dsfsdfsf)$ center 1",
	},
})

hl.workspace_rule({workspace = "1", monitor = "desc:BOE NE160QDM-NM9"})
hl.workspace_rule({workspace = "2", monitor = "desc:BOE NE160QDM-NM9"})
hl.workspace_rule({workspace = "3", monitor = "desc:BOE NE160QDM-NM9"})
hl.workspace_rule({workspace = "4", monitor = "desc:BOE NE160QDM-NM9"})
hl.workspace_rule({workspace = "5", monitor = "desc:BOE NE160QDM-NM9"})


hl.config({
	debug = {
		overlay = false,
	},
	render = {
		direct_scanout = 0,
		cm_auto_hdr = 1,
	},
	cursor = {
		no_hardware_cursors = 0,
		no_break_fs_vrr = 1,
		min_refresh_rate = 60,
	},
	--windowrule = opacity 100%, class:vesktop
	misc = {
		middle_click_paste = false,
	},
})

