{ config, pkgs, ... }:

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	# Отключить вывод информации при запуске и выключении
	boot.plymouth.enable = true;
}