/// @description Fire event

if (firing_delay_current <= 0)
{
	with (instance_create_layer(x, y, "Bullets", obj_bullet_friendly))
	{
		speed = other.firing_speed;
		direction = other.image_angle;
		image_angle = direction;
		damage = other.damage;
	}
	firing_delay_current = firing_delay;
}

