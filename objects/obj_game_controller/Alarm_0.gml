/// @description Award metal

if (pending_metal > 0)
{
	global.game_controller.station_metal_amount += pending_metal;
}
pending_metal = 0;
audio_play_sound(metal_collect_sound, 100, false, global.sfx_volume * global.master_volume);

with (obj_space_station)
{
	event_user(1);
}
