
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (hp <= 0)
{
	instance_destroy();
}

firing_delay_current = max(0, firing_delay_current - 1);

if (firing_delay_current <= 0)
{
	with (instance_create_layer(x, y, "Bullets", obj_bullet_enemy))
	{
		speed = other.firing_speed;
		direction = point_direction(other.x, other.y, obj_space_station.x, obj_space_station.y);
		image_angle = direction;
		damage = other.damage;
	}
	firing_delay_current = firing_delay;
}