
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

if (point_distance(x, y, obj_space_station.x, obj_space_station.y) >= attack_radius + obj_space_station.sprite_width * obj_space_station.station_size * 0.5 && is_moving)
{
	x += lengthdir_x(moving_speed * delta_time, attack_angle);
	y += lengthdir_y(moving_speed * delta_time, attack_angle);
}
else
{
	is_moving = false;
}

turret_1.x = x + lengthdir_x(turret_1_dist, turret_1_dir + image_angle);
turret_2.x = x + lengthdir_x(turret_2_dist, turret_2_dir + image_angle);
turret_3.x = x + lengthdir_x(turret_3_dist, turret_3_dir + image_angle);
turret_1.y = y + lengthdir_y(turret_1_dist, turret_1_dir + image_angle);
turret_2.y = y + lengthdir_y(turret_2_dist, turret_2_dir + image_angle);
turret_3.y = y + lengthdir_y(turret_3_dist, turret_3_dir + image_angle);

if (!is_moving)
{
	turret_1.is_active = true;
	turret_2.is_active = true;
	turret_3.is_active = true;
}
