hl.config({
	input = {
		kb_layout = "fr",
		-- An "individual" decided to touch my config to force me use this cursed layout...
		-- kb_variant = ergol

		numlock_by_default = true,
		kb_options = "compose:rctrl",

		follow_mouse = 1,

		touchpad = {
			natural_scroll = false,
			drag_lock = true,
		},
	},
})

hl.on("hyprland.start", function()
	hl.exec_cmd("initial-devices-toggle.sh")
end)
