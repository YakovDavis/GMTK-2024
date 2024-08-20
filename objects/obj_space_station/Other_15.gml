/// @description Add second gun event

if (!has_2_gun)
{
	if (gun_2 == noone)
	{
		var _dist = sprite_width * 0.5 * station_size + orbit_margin;
		
		gun_2 = instance_create_layer(x + lengthdir_x(_dist, -gun_rotation), y + lengthdir_y(_dist, -gun_rotation), "Guns", obj_gun);
		gun_2.is_red = true;
	}
	has_2_gun = true;
}
