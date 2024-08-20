
// Inherit the parent event
event_inherited();

global.music_volume = slider_pos;
audio_emitter_gain(global.bgm_emitter, global.master_volume * global.music_volume);

