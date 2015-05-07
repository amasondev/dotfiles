myappmenu = {
	{ "DeadBeef" , "deadbeef" },
	{ "Gimp" , "gimp" },
	{ "LibreOffice" , "libreoffice" },
	{ "Mumble" , "mumble" },
	{ "Monodevelop" , "monodevelop --no-redirect" },
	{ "PlayOnLinux" , "playonlinux" },
        { "Steam" , "steam" },
	{ "Skype" , "skype" },
	{ "Transmission" , "transmission-gtk" },
	{ "VirtualBox" , "virtualbox" },
}

browser = "chromium"
filemanager = "thunar"
mailclient = "geary"
terminal = "terminator" or "urxvt"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor

autorun = {
	"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
	"compton",
	"pasystray",
	"nm-applet",
	"skype",
	"xscreensaver -no-splash",
}