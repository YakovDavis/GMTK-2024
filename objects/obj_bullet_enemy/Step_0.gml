
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

var _hit_shield = instance_place(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_shield);
if (_hit_shield)
{
	with (_hit_shield)
	{
		if (is_active)
		{
			event_user(1);
		}
	}
	if (global.game_controller.shield_reflector_level > 0)
	{
		var _chance = 0.01 * real(global.game_controller.upgrade_params_grid[# 3, global.game_controller.shield_reflector_level + 2]);
		var _rnd = random_range(0, 1);
		if (_rnd <= _chance)
		{
			event_user(1);
		}
		else
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
}

if (place_meeting(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_space_station))
{
	audio_play_sound(sound_damage_metal,100,false, global.sfx_volume * global.master_volume);
	with(obj_space_station)
	{
		if (global.game_controller.station_metal_amount > 0)
		{
			global.game_controller.station_metal_amount = max(global.game_controller.station_metal_amount - other.damage, 0);
			event_user(2);
		}
		else
		{
			hp -= other.damage;
			event_user(2);
		}
	}
	instance_destroy();
}