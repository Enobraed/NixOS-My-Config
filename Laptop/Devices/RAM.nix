{ config, pkgs, ... }:

{
	# Включить подкачку в ОЗУ (сжатие ОЗУ при её нехватке)
	zramSwap = {
		enable = true;
		algorithm = "lz4";
		memoryPercent = 100;
		priority = 999;
	};
}