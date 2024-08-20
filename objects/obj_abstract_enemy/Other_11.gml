/// @description On death event
audio_play_sound(sound_death,100,false);

var _vfx = instance_create_layer(x, y, "VFX", destroyed_vfx);
_vfx.gravity_dir = image_angle;
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
