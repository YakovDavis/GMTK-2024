/// @description On death event
audio_play_sound(sound_death,100,false);

var _vfx = instance_create_layer(x, y, "VFX", destroyed_vfx);
_vfx.gravity_dir = image_angle;
_vfx.has_metal = metal_content > 0;
var _distance = point_distance(x, y, obj_space_station.x, obj_space_station.y);
_vfx.metal_lifetime_avg = estimate_lifetime_gravity_distance(_vfx.gravity_strength, _distance);
with (_vfx)
{
	event_user(0);
}

with (obj_game_controller)
{
	station_metal_amount += other.metal_content;
	other.metal_content = 0;
	event_user(2);
}
