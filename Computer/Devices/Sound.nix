{ config, pkgs, ... }:

{
	# Включить звук
	sound.enable = true;

	# RealtimeKit
	# Позволяет пользовательским процессам получать приоритет планирования в реальном времени. Необходим для PulseAudio, PipeWire
	security.rtkit.enable = true;

	# Отключить PulseAudio
	hardware.pulseaudio = {
		enable = false;
		support32Bit = false;
	};

	# PipeWire
	# Обеспечить захват и воспроизведение аудио и видео с минимальной задержкой и поддержку приложений на базе PulseAudio, JACK, ALSA и GStreamer.
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};
}