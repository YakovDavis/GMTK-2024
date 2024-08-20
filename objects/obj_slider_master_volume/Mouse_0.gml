
// Inherit the parent event
event_inherited();

global.master_volume = slider_pos;
audio_emitter_gain(global.sfx_emitter, global.master_volume * global.sfx_volume);
audio_emitter_gain(global.bgm_emitter, global.master_volume * global.music_volume);
