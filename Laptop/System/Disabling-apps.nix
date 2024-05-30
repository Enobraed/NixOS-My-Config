{ config, pkgs, ... }:

{
	# Отключить NixOS Manual
	documentation.nixos.enable = false;

	# Отключить консоль xterm
	services.xserver.excludePackages = [pkgs.xterm];
	
	# Отключить настройку печати
	services.printing.enable = false;
	services.system-config-printer.enable = false;
}