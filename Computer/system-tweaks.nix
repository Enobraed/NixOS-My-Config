{ config, pkgs, ... }:

{
  # Обновление микрокода
  hardware.cpu.intel.updateMicrocode = true;

  # Обновление ядра
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Автоматически обновлять программы при rebuild
  system.autoUpgrade.enable = true;

  # Отключить настройку печати
  services.printing.enable = false;
  services.system-config-printer.enable = false;

  # Отключить NixOS Manual
  documentation.nixos.enable = false;

  # Включить оптимизацию магазина nix при rebuild
  nix.settings.auto-optimise-store = true;

  # Автоматически удалять неиспользуемые компоненты каждую неделю
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  # Активировать балансировку прерываний по ядрам процессора
  services.irqbalance.enable = true;

  # Включить подкачку в ОЗУ (сжатие ОЗУ при её нехватке)
  zramSwap.enable = true;

  # Отключить IPv6
  networking.enableIPv6 = false;
  networking.dhcpcd.extraConfig = "\nnoipv6rs \nnoipv6";

  # Gamemode
  programs.gamemode.enable = true;

  # Gamescope
  programs.steam.gamescopeSession.enable = true;

  # Отключить вывод информации при запуске и выключении
  boot.plymouth.enable = true;
  
  # Отключить консоль xterm
  services.xserver.excludePackages = [
    pkgs.xterm
  ];
}
