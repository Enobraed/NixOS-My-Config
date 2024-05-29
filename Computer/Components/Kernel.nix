{ config, pkgs, ... }:

{
	# Обновление ядра до актуальной версии
	boot.kernelPackages = pkgs.linuxPackages_latest;
}