
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