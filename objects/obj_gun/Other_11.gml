/// @description Fire event

with (instance_create_layer(x, y, "Bullets", obj_bullet_friendly))
{
	speed = other.firing_speed;
	direction = other.image_angle;
	image_angle = direction;
	if (double_damage)
	{
		damage = other.damage * 2.0;
	}
	else
	{
		damage = other.damage;
	}
}
firing_delay_current = firing_delay;


