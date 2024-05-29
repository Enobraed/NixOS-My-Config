{ config, pkgs, ... }:

{
	# Обновление Microcode
	hardware.cpu.intel.updateMicrocode = true;
}