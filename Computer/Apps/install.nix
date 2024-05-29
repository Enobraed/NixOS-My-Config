{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
	
		# Opening files
		pkgs.audacious
		pkgs.libreoffice
		pkgs.vlc

		# Communication
		pkgs.betterdiscordctl
		pkgs.discord
		pkgs.telegram-desktop

		# Gaming
		pkgs.gamescope
		pkgs.lutris
		pkgs.steam

		# System monitoring
		pkgs.goverlay
		pkgs.mangohud

		# Development
		pkgs.git
		pkgs.vscodium

		# Remote access
		pkgs.anydesk
		pkgs.parsec-bin

		# Etc
		pkgs.appeditor
		pkgs.fastfetch
		pkgs.gparted
		pkgs.obs-studio
		pkgs.qbittorrent

		# GNOME
		pkgs.gnome.gnome-tweaks
		pkgs.gnomeExtensions.dash-to-dock
		pkgs.gnomeExtensions.appindicator
		pkgs.gnomeExtensions.quick-lang-switch

		# Icons
		pkgs.papirus-icon-theme
	];
}