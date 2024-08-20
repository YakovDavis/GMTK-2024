/// @description On death event
//audio_play_sound(sound_death,100,false,global.sfx_volume * global.master_volume);
audio_play_sound_on(global.sfx_emitter, sound_death, false, 100);

var _vfx = instance_create_layer(x, y, "VFX", destroyed_vfx);
_vfx.gravity_dir = image_angle;
_vfx.has_metal = metal_content > 0;
var _distance = point_distance(x, y, obj_space_station.x, obj_space_station.y);
var _lifetime = estimate_lifetime_gravity_distance(_vfx.gravity_strength, _distance);
_vfx.metal_lifetime_avg = _lifetime;
with (_vfx)
{
	event_user(0);
}

if (metal_content > 0)
{
	with (obj_game_controller)
	{
		if (pending_metal > 0)
		{
			station_metal_amount += pending_metal;
			audio_play_sound(metal_collect_sound, 100, false, global.sfx_volume * global.master_volume);
		}
		pending_metal = other.metal_content;
		other.metal_content = 0;
		alarm_set(0, _lifetime * 3);
		event_user(2);
	}
}
