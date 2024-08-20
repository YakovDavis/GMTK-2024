
// Inherit the parent event
event_inherited();

vampiric_fraction = 0;
homing_strength = 0;
if (global.game_controller.cannon_homing_level > 0)
{
	homing_strength = real(global.game_controller.upgrade_params_grid[# 6, global.game_controller.cannon_homing_level + 2]);
}
base_homing_speed = 0.0001;
homing_threshold = 10;

//audio_play_sound(sound_bullet,100,false, global.sfx_volume * global.master_volume);
audio_play_sound_on(global.sfx_emitter, sound_bullet, false, 100);