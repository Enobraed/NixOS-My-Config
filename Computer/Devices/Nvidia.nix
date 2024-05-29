{ config, pkgs, ... }:

{
	# Установка и настройка драйвера NVIDIA
	services.xserver.videoDrivers = ["nvidia"];
	hardware.nvidia = {
		modesetting.enable = true;
		powerManagement.enable = false;
		powerManagement.finegrained = false;
		open = false;
		nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.stable;
	};

	# Отключить Wayland, использовать X11
	services.xserver.displayManager.gdm.wayland = false;
}