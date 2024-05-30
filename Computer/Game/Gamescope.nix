{ config, pkgs, ... }:

{
	programs.gamescope= {
		enable = true;
		args = [
			"-f"
			"-W 1920 -H 1080"
		];
	};

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
}