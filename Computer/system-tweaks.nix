{ config, pkgs, ... }:

{
  # --------------------------------------------------------
  # Обновление компонентов

  # Обновление микрокода
  hardware.cpu.intel.updateMicrocode = true;

  # Обновление ядра
  boot.kernelPackages = pkgs.linuxPackages_latest;
  # --------------------------------------------------------
  # Настройка rebuild

  # Автоматически обновлять программы при rebuild
  system.autoUpgrade.enable = true;

  # Включить оптимизацию магазина nix при rebuild
  nix.settings.auto-optimise-store = true;
  # --------------------------------------------------------
  # Настройка системных компонентов

  # OpenGL
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;
  # --------------------------------------------------------
  # Отключение ненужных функций

  # Отключить NixOS Manual
  documentation.nixos.enable = false;

  # Отключить консоль xterm
  services.xserver.excludePackages = [pkgs.xterm];

  # Отключить вывод информации при запуске и выключении
  boot.plymouth.enable = true;

  # Отключить IPv6
  networking.enableIPv6 = false;
  networking.dhcpcd.extraConfig = "\nnoipv6rs \nnoipv6";

  # Отключить настройку печати
  services.printing.enable = false;
  services.system-config-printer.enable = false;
  # --------------------------------------------------------
  # Прочие твики

  # Автоматически удалять неиспользуемые компоненты каждую неделю
  nix.gc.automatic = true;
  nix.gc.dates = "weekly";
  nix.gc.options = "--delete-older-than 7d";

  # Включить TRIM для SSD
  services.fstrim.enable = true;
  # --------------------------------------------------------
  # Оптимизация системы

  # Активировать балансировку прерываний по ядрам процессора
  services.irqbalance.enable = true;

  # Включить подкачку в ОЗУ (сжатие ОЗУ при её нехватке)
  zramSwap = {
    enable = true;
    algorithm = "lz4";
    memoryPercent = 100;
    priority = 999;
  };
  # --------------------------------------------------------
  # Настройка компонентов для игр

  # Gamemode
  programs.gamemode.enable = true;
  programs.gamemode.enableRenice = true;

  # Gamescope
  programs.steam.gamescopeSession.enable = true;
  programs.gamescope.args = [
    "-f"
  	"-W 1920 -H 1080"
  ];
  nixpkgs.config.packageOverrides = pkgs: {
    steam = pkgs.steam.override {
      extraPkgs = pkgs: with pkgs; [
        xorg.libXcursor
        xorg.libXi
        xorg.libXinerama
        xorg.libXScrnSaver
        libpng
        libpulseaudio
        libvorbis
        stdenv.cc.cc.lib
        libkrb5
        keyutils
      ];
    };
  };

  # Steam
  programs.steam.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [ proton-ge-bin ];
}