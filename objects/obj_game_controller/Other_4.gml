
global.on_button = false;
upgrades_scroll_y = upgrades_vmargin;

if (room == rm_game)
{
	if (!global.is_game_initialized)
	{
		event_user(1);
	}
	else
	{
		apply_all_upgrades();
	}
	global.is_paused = false;
}
else if (room == rm_menu || room == rm_settings)
{
	global.is_game_initialized = false;
}
