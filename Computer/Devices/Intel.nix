{ config, pkgs, ... }:

{
	boot.kernelParams = ["intel_pstate=active"];

	# Процессор всегда работает на 3000 MHz
	powerManagement = {
		cpufreq.min=3000000;
		cpufreq.max=3000000;
	};
}