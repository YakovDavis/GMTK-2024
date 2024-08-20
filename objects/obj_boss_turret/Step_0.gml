
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

image_angle = point_direction(x, y, obj_space_station.x, obj_space_station.y);

if (is_active)
{
	firing_delay_current = max(0, firing_delay_current - 1);

	if (firing_delay_current <= 0)
	{
		with (instance_create_layer(x, y, "Bullets", obj_bullet_enemy))
		{
			speed = other.firing_speed;
			direction = other.image_angle;
			image_angle = direction;
			damage = other.damage;
		}
		firing_delay_current = firing_delay;
	}
}
