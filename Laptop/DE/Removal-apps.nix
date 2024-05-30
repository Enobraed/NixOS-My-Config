{ config, pkgs, ... }:

{
	environment.gnome.excludePackages = (with pkgs; [
		gnome-connections
		gnome-photos
    	gnome-tour
    	snapshot
	]) ++ (with pkgs.gnome; [
		atomix
		baobab
		cheese
		epiphany
		evince
		geary
		gnome-calendar
		gnome-characters
		gnome-clocks
		gnome-contacts
		gnome-font-viewer
		gnome-logs
		gnome-maps
		gnome-music
		gnome-remote-desktop
		gnome-weather
		hitori
		iagno
		seahorse
		simple-scan
		tali
		totem
		yelp
	]);
}