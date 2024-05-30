{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		# Opening files
		audacious
		libreoffice
		vlc

		# Communication
		betterdiscordctl
		discord
		telegram-desktop

		# Gaming
		gamescope
		lutris
		steam

		# System monitoring
		goverlay
		mangohud

		# Development
		git
		vscodium

		# Remote access
		anydesk
		parsec-bin

		# Etc
		appeditor
		fastfetch
		gparted
		libsForQt5.ark
		obs-studio
		qbittorrent
	];
}