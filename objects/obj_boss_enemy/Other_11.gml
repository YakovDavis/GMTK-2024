/// @description Death event

if (instance_exists(turret_1))
{
	instance_destroy(turret_1);
}
if (instance_exists(turret_2))
{
	instance_destroy(turret_2);
}
if (instance_exists(turret_3))
{
	instance_destroy(turret_3);
}

//audio_play_sound(sound_boss_death, 100, false, global.sfx_volume * global.master_volume);
audio_play_sound_on(global.sfx_emitter, sound_boss_death, false, 100);
audio_stop_sound(sound_music);
audio_play_sound_on(global.bgm_emitter, global.game_controller.music_game, true, 100);

// Inherit the parent event
event_inherited();

