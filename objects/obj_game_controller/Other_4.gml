
global.on_button = false;
upgrades_scroll_y = upgrades_vmargin;

if (room == rm_game)
{
	audio_stop_sound(music_menu);
	audio_play_sound_on(global.bgm_emitter, music_game, true, 100);
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
	if (room == rm_menu)
	{
		audio_stop_sound(music_game);
		audio_play_sound_on(global.bgm_emitter, music_menu, true, 100);
	}
	global.is_game_initialized = false;
}
