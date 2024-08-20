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

if (is_rotating)
{
	if ((rotation_sign > 0 && image_angle >= target_angle) || (rotation_sign < 0 && image_angle <= target_angle))
	{
		is_rotating = false;
	}
	else
	{
		image_angle += rotation_speed * delta_time * rotation_sign;
		x = obj_space_station.x + lengthdir_x(attack_radius + obj_space_station.sprite_width * obj_space_station.station_size * 0.5, image_angle + 180);
		y = obj_space_station.y + lengthdir_y(attack_radius + obj_space_station.sprite_width * obj_space_station.station_size * 0.5, image_angle + 180);
	}
}