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
global.on_button = false;
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
station_metal_amount = 100;
emp_active = false;
emp_timer = 0;
emp_duration = 1000;
emp_cooldown_active = false;
emp_cooldown_timer = 0;
emp_cooldown_duration = 1000;

// Upgrade levels vars
shield_radius_increase_level = 0;
shield_hit_absorption_level = 0;
shield_reflector_level = 0;
cannon_damage_increase_level = 0;
cannon_shotgun_level = 0;
cannon_homing_level = 0;
cannon_vampiric_level = 0;
cannon_extra_cannon_level = 0;
emp_duration_increase_level = 0;
emp_cooldown_decrease_level = 0;
core_shields_level = 0;
core_metal_gain_level = 0;
core_rotation_speed_level = 0;

// Load .csv files
enemy_phases_grid = load_csv("csv/EnemyPhases.csv");
base_params_grid = load_csv("csv/BaseParams.csv");
upgrade_params_grid = load_csv("csv/UpgradeParams.csv");
upgrade_prices_grid = load_csv("csv/UpgradePrices.csv");
