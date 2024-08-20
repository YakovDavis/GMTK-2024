
global.on_button = false;
upgrades_scroll_y = upgrades_vmargin;

if (room == rm_game)
{
	audio_stop_sound(music_menu);
	if (!audio_is_playing(music_game))
	{
		audio_play_sound_on(global.bgm_emitter, music_game, true, 100);
	}
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
else if (room == rm_menu || room == rm_settings || room == rm_game_over)
{
	if (room == rm_menu)
	{
		audio_stop_sound(music_game);
		audio_stop_sound(sound_game_over);
		if (!audio_is_playing(music_menu))
		{
			audio_play_sound_on(global.bgm_emitter, music_menu, true, 100);
		}
	}
	if (room == rm_game_over)
	{
		audio_stop_sound(music_game);
		audio_play_sound_on(global.sfx_emitter, sound_game_over, false, 100);
	}
	global.is_game_initialized = false;
}
