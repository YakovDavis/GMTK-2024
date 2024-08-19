#macro DEBUG_MODE 1 // 0 - off, 1 - game debug options, 2 - game debug options and overlay

// Ensure existance of only one game controller
if (variable_global_exists("game_controller"))
{
	if (global.game_controller.id == id)
	{
		return;
	}
	if (DEBUG_MODE > 0)
	{
		show_debug_message("[obj_game_controller] Destroying extra controller");
	}
	instance_destroy(self);
	return;
}
global.game_controller = self;

// Setup technical params
if (DEBUG_MODE > 1)
{
	show_debug_log(true);
}
randomize();
base_width = view_wport[0];
base_height = view_hport[0];
width = base_width;
height = base_height;

// Setup sound settings
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

// Setup UI vars
upgrades_scroll_y = upgrades_vmargin;
upgrades_dragging_data = 0;
upgrades_scroll_top = upgrades_vmargin;
upgrades_scroll_bottom = 0;

// Gameplay vars
global.is_paused = false;
global.is_game_initialized = false;
current_phase = 0;
current_phase_enemies = [];
boss_present = false;
current_phase_ended = false;
next_phase_time = current_time;

// Load .csv files
enemy_phases_grid = load_csv("csv/EnemyPhases.csv");
