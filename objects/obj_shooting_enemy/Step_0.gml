
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (point_distance(x, y, obj_space_station.x, obj_space_station.y) >= attack_radius + obj_space_station.sprite_width * obj_space_station.station_size && is_moving) 
{
	x += lengthdir_x(moving_speed * delta_time, attack_angle);
	y += lengthdir_y(moving_speed * delta_time, attack_angle);
}
else
{
	is_moving = false;
}

if (!is_moving)
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

