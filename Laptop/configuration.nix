{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./Apps/imports.nix
      ./Components/imports.nix
      ./DE/imports.nix
      ./Devices/imports.nix
      ./Game/imports.nix
      ./System/imports.nix
    ];

  system.stateVersion = "23.11";
}
