{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.anydesk
    pkgs.appeditor
    pkgs.audacious
    pkgs.betterdiscordctl
    pkgs.discord
    pkgs.fastfetch
    pkgs.gamescope
    pkgs.git
    pkgs.goverlay
    pkgs.libreoffice
    pkgs.lutris
    pkgs.mangohud
    pkgs.obs-studio
    pkgs.parsec-bin
    pkgs.qbittorrent
    pkgs.steam
    pkgs.telegram-desktop
    pkgs.vlc
    pkgs.vscodium
    #GNOME
    pkgs.gnome.gnome-tweaks
    pkgs.gnomeExtensions.dash-to-dock
    pkgs.gnomeExtensions.appindicator
    pkgs.gnomeExtensions.quick-lang-switch
    #Icons
    pkgs.papirus-icon-theme
  ];
}