myappmenu = {
	{ "DeadBeef" , "deadbeef" },
	{ "Gimp" , "gimp" },
	{ "Mumble" , "mumble" },
	{ "PlayOnLinux", "playonlinux" },
	{ "Skype" , "skype" },
	{ "Transmission" , "transmission-gtk" },
	{ "VirtualBox" , "virtualbox" },
	{ "World of Warcraft", "playonlinux --run WoW" },
}

settingsmenu = {
        { "Appearance" , "lxappearance" },
        { "Awesome" , "xdg-open .config/awesome/rc.lua" },
	{ "Disks" , "gksu gparted" },
        { "Edit Applications" , "xdg-open .config/awesome/applications.lua" },
        { "Network" , "nm-connection-editor" },
	{ "Sound" , "pavucontrol" },
	{ "Task Manager", "xfce4-taskmanager" },
}

browser = "chromium"
filemanager = "thunar"
mailclient = "chromium --app='https://gmail.com/'"
terminal = "urxvt" or "terminator"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor

autorun = {
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	"rm ~/.config/pulse/*stream-volumes.tdb",
	"compton -b",
	"nm-applet",
	"pasystray",
	"skype",        
}
