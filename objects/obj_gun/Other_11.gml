/// @description Fire event

with (instance_create_layer(x, y, "Bullets", obj_bullet_friendly))
{
	bullet_speed = other.firing_speed;
	speed = bullet_speed;
	direction = other.image_angle;
	image_angle = direction;
	if (other.double_damage)
	{
		damage = other.damage * 2.0;
	}
	else
	{
		damage = other.damage;
	}
}
if (is_shotgun)
{
	with (instance_create_layer(x, y, "Bullets", obj_bullet_friendly))
	{
		bullet_speed = other.firing_speed;
		speed = bullet_speed;
		direction = other.image_angle + other.shotgun_half_angle;
		image_angle = direction;
		if (other.double_damage)
		{
			damage = other.damage * 2.0;
		}
		else
		{
			damage = other.damage;
		}
	}
	with (instance_create_layer(x, y, "Bullets", obj_bullet_friendly))
	{
		bullet_speed = other.firing_speed;
		speed = bullet_speed;
		direction = other.image_angle - other.shotgun_half_angle;
		image_angle = direction;
		if (other.double_damage)
		{
			damage = other.damage * 2.0;
		}
		else
		{
			damage = other.damage;
		}
	}
}
firing_delay_current = firing_delay;


