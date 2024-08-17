if (variable_global_exists("game_controller"))
{
	if (global.game_controller == self)
	{
		return;
	}
	show_debug_message("[obj_game_controller] Destroying extra controller");
	instance_destroy(self);
}

global.game_controller = self;

#macro DEBUG_MODE 1 // 0 - off, 1 - game debug options, 2 - game debug options and overlay

if (DEBUG_MODE > 1)
{
	show_debug_log(true);
}

randomize();

width = base_width;
height = base_height;

global.is_paused = false;

global.master_volume = 1.0;
global.sfx_volume = 1.0;
global.music_volume = 1.0;

if (file_exists(settings_filename))
{
	ini_open(settings_filename);
	global.master_volume = ini_read_real("Sound", "master_volume", global.master_volume);
	global.sfx_volume = ini_read_real("Sound", "sfx_volume", global.sfx_volume);
	global.music_volume = ini_read_real("Sound", "music_volume", global.music_volume);
	ini_close();
}
else
{
	event_user(0);
}
