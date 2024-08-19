
if (room == rm_game)
{
	if (!global.is_game_initialized)
	{
		event_user(1);
	}
	global.is_paused = false;
}
else if (room == rm_menu || room == rm_settings)
{
	global.is_game_initialized = false;
}
