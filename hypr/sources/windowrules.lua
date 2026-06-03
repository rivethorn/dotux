local apps = {
	"nm-connection-editor",
	"org.pulseaudio.pavucontrol",
	"org.gnome.eog",
	"vlc",
	"blueman-manager",
	"io.missioncenter.MissionCenter",
}

for _, app in ipairs(apps) do
	hl.window_rule({
		match = {
			class = app,
		},
		float = true,
	})
end

hl.window_rule({
	match = { class = "^(Share|localsend)$" },
	float = true,
	size = { "(monitor_w*0.5)", "(monitor_h*0.6)" },
})

hl.window_rule({
	match = {
		class = "chromium",
		title = "Picture-in-Picture",
	},
	float = true,
})
