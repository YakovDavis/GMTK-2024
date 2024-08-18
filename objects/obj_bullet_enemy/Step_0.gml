// Inherit the parent event
event_inherited();

if (place_meeting(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_space_station))
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