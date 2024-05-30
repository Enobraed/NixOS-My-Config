{ config, pkgs, ... }:

{
	# Обновление Microcode
	hardware.cpu.amd.updateMicrocode = true;
}