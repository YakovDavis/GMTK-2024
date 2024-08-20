/// @description Take damage

hits_left--;
if (hits_left <= 0)
{
	is_active = false;
	audio_play_sound(sound_deactivate, 100, false, global.sfx_volume * global.master_volume);
}