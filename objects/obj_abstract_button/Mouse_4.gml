/// @description Button action (inherit!)

//audio_play_sound(button_sound,100,false, global.sfx_volume * global.master_volume);
audio_play_sound_on(global.sfx_emitter, button_sound, false, 100);