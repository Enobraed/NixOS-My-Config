{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		pkgs.gnome.gnome-tweaks
		pkgs.gnomeExtensions.dash-to-dock
		pkgs.gnomeExtensions.appindicator
		pkgs.gnomeExtensions.quick-lang-switch
		
		pkgs.papirus-icon-theme
	];
}