{ config, pkgs, ... }:

{
	networking.hostName = "nixos"; 
	networking.networkmanager.enable = true;

	# Отключить IPv6
	networking.enableIPv6 = false;
	networking.dhcpcd.extraConfig = "\nnoipv6rs \nnoipv6";
}