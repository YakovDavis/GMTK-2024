/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

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
		if (metal_amount > 0)
		{
			metal_amount -= other.damage;
			station_size = metal_to_size(metal_amount);
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