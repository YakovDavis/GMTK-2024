
// Inherit the parent event
event_inherited();

global.sfx_volume = slider_pos;
audio_emitter_gain(global.sfx_emitter, global.master_volume * global.sfx_volume);
