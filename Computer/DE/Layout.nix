{ config, pkgs, ... }:

{
  programs = {
    dconf = {
      profiles = {
        user = {
          databases = [
            {
              lockAll = true;
              settings = {
                "org/gnome/desktop/wm/keybindings" = {
                  switch-input-source = [ "<Shift>Alt_L" ];
                  switch-input-source-backward = [ "<Alt>Shift_L" ];
                };
              };
            }
          ];
        };
      };
    };
  };
}