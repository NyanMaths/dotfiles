hl.config({
	general = {
		allow_tearing = true,
	},
})

hl.window_rule({
	name = "tear-me-senpai",
	match = {
		fullscreen = true,
	},
	immediate = true,
})
