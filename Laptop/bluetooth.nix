{ config, pkgs, ... }:

{
  # Включить поддержку Bluetooth
  hardware.bluetooth.enable = true;

  # Включение Bluetooth при запуске
  hardware.bluetooth.powerOnBoot = true;

  # Включить PipeWire для Bluetooth
  services.pipewire.wireplumber.extraConfig = {
    "monitor.bluez.properties" = {
      "bluez5.enable-sbc-xq" = true;
      "bluez5.enable-msbc" = true;
      "bluez5.enable-hw-volume" = true;
      "bluez5.roles" = [ "hsp_hs" "hsp_ag" "hfp_hf" "hfp_ag" ];
    };
  };
}