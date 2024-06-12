{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [

		librewolf

		# Opening files
		audacious
		libreoffice
		vlc

		# Communication
		betterdiscordctl
		discord
		telegram-desktop
		whatsapp-for-linux

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
		pulseeffects-legacy
	];
}