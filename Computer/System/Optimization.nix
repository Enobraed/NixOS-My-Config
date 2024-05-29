{ config, pkgs, ... }:

{
	# Автоматически удалять неиспользуемые компоненты каждую неделю
	nix.gc = {
		automatic = true;
		dates = "weekly";
		options = "--delete-older-than 7d";
	};
	
	# Активировать балансировку прерываний по ядрам процессора
	services.irqbalance.enable = true;

	# Broker
	# Реализована в пространстве пользователя, использует ядро для ускорения. Полностью совместима с эталонной реализацией D-Bus, не реализует устаревшие функции и расширения
	services.dbus.implementation = "broker";

	# Ananicy
	# Ananicy-cpp - это форк демона Ananicy, переписанный на C++, который распределяет приоритеты процессов для повышения производительности и отклика системы
	# Ananicy-rules-cachyos - набор правил для Ananicy от CachyOS, для повышения производительности и отклика системы
	services.ananicy = {
		enable = true;
		package = pkgs.ananicy-cpp;
		rulesProvider = pkgs.ananicy-rules-cachyos;
	};

	# Отключить IPv6
	networking.enableIPv6 = false;
	networking.dhcpcd.extraConfig = "\nnoipv6rs \nnoipv6";
}