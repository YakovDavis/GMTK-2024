
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (place_meeting(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_space_station))
{
	with(obj_space_station)
	{
		if (global.game_controller.station_metal_amount > 0)
		{
			global.game_controller.station_metal_amount = max(global.game_controller.station_metal_amount - other.damage, 0);
			station_size = metal_to_size(obj_game_controller.station_metal_amount);
			event_user(1);
		}
		else
		{
			hp -= other.damage;
			if (hp <= 0)
			{
				//game over
			}
		}
	}
	instance_destroy();
}