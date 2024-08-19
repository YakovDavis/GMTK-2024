
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

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
		if (metal_content > 0)
		{
			metal_content = max(metal_content - other.damage, 0);
			station_size = metal_to_size(metal_content);
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