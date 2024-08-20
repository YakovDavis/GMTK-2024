/// @description Reset shield

hits_left = max_hits;
if (!is_active)
{
	is_active = true;
	//audio_play_sound(sound_restore, 100, false, global.sfx_volume * global.master_volume);
	audio_play_sound_on(global.sfx_emitter, sound_restore, false, 100);
}