// Inherit the parent event
event_inherited();

if (keyboard_check(ord("A")))
{
	gun_rotation += rotation_speed * delta_time;
	resetting = true;
}
if (keyboard_check(ord("D")))
{
	gun_rotation -= rotation_speed * delta_time;
	resetting = true;
}
if (resetting)
{
	if (gun_rotation > 360) gun_rotation -= 360;
	else if (gun_rotation < 0) gun_rotation += 360;
	gun_1.rotation = gun_rotation;
	gun_1.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation);
	gun_1.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation);
	gun_2.rotation = gun_rotation + 180;
	gun_2.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 180);
	gun_2.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 180);
	resetting = false;
}
if (mouse_check_button_pressed(mb_left))
{
	with (gun_2)
	{
		event_user(1);
	}
}

if (mouse_check_button_pressed(mb_right))
{
	with (gun_1)
	{
		event_user(1);
	}
}