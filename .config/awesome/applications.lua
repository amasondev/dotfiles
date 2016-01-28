-- This file controls the default applications used by awesome in shortcuts and menus.
-- To assign default applications used by the system, see MIME types (ex ~/.config/mimeapps.list).

browser = "exo-open --launch WebBrowser"
filemanager = "exo-open --launch FileManager"
mailclient = "exo-open --launch MailReader"
terminal = "exo-open --launch TerminalEmulator" or "urxvt"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor
lock_cmd = "xscreensaver-command -lock"

-- Applications menu
myappmenu = {
	{ "DeadBeef" , "deadbeef" },
	{ "Gimp" , "gimp" },
	{ "Mumble" , "mumble" },
	{ "PlayOnLinux", "playonlinux" },
	{ "Skype" , "skype" },
	{ "Steam" , "steam" },
	{ "Unity" , "unity-editor" },
	{ "Transmission" , "transmission-gtk" },
	{ "Virtual Machines" , "virtualbox" },
	{ "World of Warcraft", "playonlinux --run WoW" },
}

-- Settings menu
settingsmenu = {
        { "Appearance" , "lxappearance" },
        { "Awesome" , "exo-open .config/awesome/rc.lua" },
	{ "Disks" , "gksu gparted" },
        { "Edit Applications" , "exo-open .config/awesome/applications.lua" },
	{ "Login Screen", "gksu lightdm-gtk-greeter-settings" },
        { "Network" , "nm-connection-editor" },
	{ "NVIDIA Settings", "nvidia-settings" },
	{ "Screensaver" , "xscreensaver-demo" },
	{ "Settings Manager", "xfce4-settings-manager" },
	{ "Sound" , "pavucontrol" },
	{ "System Update", terminal .. " -e bash -c 'yaourt -Syua; echo Done.; sleep 2' " },
	{ "Task Manager", "xfce4-taskmanager" },
}

-- Autorun applications. Started upon login.
autorun = {
	-- Settings Daemon
	"xfsettingsd",
	"xfce4-power-manager",
	-- Polkit
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	-- Forget manually adjusted application volumes
	"rm ~/.config/pulse/*stream-volumes.tdb",
	-- Music Player Daemon
	"mpd",
	-- Load nvidia settings
	"nvidia-settings -l",
	-- Screensaver daemon
	"xscreensaver -nosplash",
	-- Compositor
	"compton -b",
	-- Network Manager interface
	"nm-applet",
	-- Pulse Audio interface
	"pasystray",
	-- Other
	"skype-web"
}
