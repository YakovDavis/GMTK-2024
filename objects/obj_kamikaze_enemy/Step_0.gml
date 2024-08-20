
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (is_waiting)
{
	return;
}

if (is_emp_ed)
{
	return;
}

if (!place_meeting(x + lengthdir_x(moving_speed * delta_time, image_angle),
y + lengthdir_y(moving_speed * delta_time, image_angle), obj_space_station))
{
	x += lengthdir_x(moving_speed * delta_time, attack_angle);
	y += lengthdir_y(moving_speed * delta_time, attack_angle);
}
else
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
	hp = 0;
	metal_content = 0;
	event_user(1);
	instance_destroy();
}