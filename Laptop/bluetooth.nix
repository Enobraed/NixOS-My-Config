{ config, pkgs, ... }:

{
  # Включить поддержку Bluetooth
  hardware.bluetooth.enable = true;

  # Включение Bluetooth при запуске
  hardware.bluetooth.powerOnBoot = true;
}