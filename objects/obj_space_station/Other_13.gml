/// @description Create shields

if (!has_shields)
{
	shield_1 = instance_create_layer(0, 0, "Guns", obj_shield);
	shield_1.image_angle = gun_rotation + 90;
	shield_1.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 90);
	shield_1.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 90);
	
	shield_2 = instance_create_layer(0, 0, "Guns", obj_shield);
	shield_2.image_angle = gun_rotation + 270;
	shield_2.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 270);
	shield_2.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 270);
	
	has_shields = true;
}