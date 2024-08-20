// Inherit the parent event
event_inherited();
//audio_play_sound(sound_bullet, 100, false, global.sfx_volume * global.master_volume);
audio_play_sound_on(global.sfx_emitter, sound_bullet, false, 100); 

