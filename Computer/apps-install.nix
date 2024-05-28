{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.audacious
    pkgs.discord
    pkgs.betterdiscordctl
    pkgs.fastfetch
    pkgs.libreoffice
    pkgs.lutris
    pkgs.obs-studio
    pkgs.parsec-bin
    pkgs.qbittorrent
    pkgs.steam
    pkgs.telegram-desktop
    pkgs.vlc
    pkgs.vscodium
    pkgs.mangohud
    pkgs.goverlay
    pkgs.gamescope
    pkgs.anydesk
    pkgs.appeditor
    pkgs.git
    #GNOME
    pkgs.gnome.gnome-tweaks
    pkgs.gnomeExtensions.dash-to-dock
    pkgs.gnomeExtensions.appindicator
    pkgs.gnomeExtensions.quick-lang-switch
    #Icons
    pkgs.papirus-icon-theme
  ];
}
