{ config, pkgs, ... }:

{
  boot.kernelParams = ["intel_pstate=active"];

  # Залочить 3000 MHz
  powerManagement.cpufreq.min=3000000;
  powerManagement.cpufreq.max=3000000;
}