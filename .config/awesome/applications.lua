-- This file controls the default applications used by awesome in shortcuts and menus.
-- To assign default applications used by the system, see MIME types (ex ~/.config/mimeapps.list).

browser = "firefox"
filemanager = "pcmanfm"
mailclient = "thunderbird"
terminal = "urxvt" or "terminator"
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
	{ "Transmission" , "transmission-gtk" },
	{ "VirtualBox" , "virtualbox" },
	{ "World of Warcraft", "playonlinux --run WoW" },
}

-- Settings menu
settingsmenu = {
        { "Appearance" , "lxappearance" },
        { "Awesome" , "xdg-open .config/awesome/rc.lua" },
	{ "Disks" , "gksu gparted" },
        { "Edit Applications" , "xdg-open .config/awesome/applications.lua" },
	{ "Login Screen", "gksu lightdm-gtk-greeter-settings" },
        { "Network" , "nm-connection-editor" },
	{ "NVIDIA Settings", "nvidia-settings" },
	{ "Screensaver" , "xscreensaver-demo" },
	{ "Sound" , "pavucontrol" },
	{ "System Update", terminal .. " -e bash -c 'yaourt -Syua; echo Done.; sleep 2' " },
	{ "Task Manager", "xfce4-taskmanager" },
}

-- Autorun applications. Started upon login.
autorun = {
	-- Polkit
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	-- Forget manually adjusted application volumes
	"rm ~/.config/pulse/*stream-volumes.tdb",
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
	"skype",
}
