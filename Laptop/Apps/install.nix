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
		pkgs.libsForQt5.ark
		pkgs.obs-studio
		pkgs.qbittorrent
	];
}