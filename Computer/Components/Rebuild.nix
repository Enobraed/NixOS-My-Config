{ config, pkgs, ... }:

{
	# Автоматически обновлять программы при rebuild
	system.autoUpgrade.enable = true;

	# Включить оптимизацию магазина nix при rebuild
	nix.settings.auto-optimise-store = true;
}