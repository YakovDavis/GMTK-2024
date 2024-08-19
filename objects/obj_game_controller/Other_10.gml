/// @description Save settings to ini

ini_open(settings_filename);
ini_write_real("Sound", "master_volume", global.master_volume);
ini_write_real("Sound", "sfx_volume", global.sfx_volume);
ini_write_real("Sound", "music_volume", global.music_volume);
ini_close();
