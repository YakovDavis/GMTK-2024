
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (keyboard_check(ord("A")))
{
	gun_rotation += rotation_speed / station_size * delta_time;
	resetting = true;
}
if (keyboard_check(ord("D")))
{
	gun_rotation -= rotation_speed / station_size * delta_time;
	resetting = true;
}
if (resetting)
{
	if (gun_rotation > 360) gun_rotation -= 360;
	else if (gun_rotation < 0) gun_rotation += 360;
	gun_1.rotation = gun_rotation + 180;
	gun_1.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 180);
	gun_1.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 180);
	if (has_2_gun)
	{
		gun_2.rotation = gun_rotation;
		gun_2.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation);
		gun_2.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation);
	}
	if (has_shields)
	{
		shield_1.image_angle = gun_rotation + 90;
		shield_1.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 90);
		shield_1.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 90);
		shield_2.image_angle = gun_rotation + 270;
		shield_2.x = x + lengthdir_x(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 270);
		shield_2.y = y + lengthdir_y(sprite_width * 0.5 * station_size + orbit_margin, gun_rotation + 270);
	}
	resetting = false;
}

if (!global.on_button)
{
	if (has_2_gun && mouse_check_button_pressed(mb_right))
	{
		with (gun_2)
		{
			if (firing_delay_current <= 0)
			{
				if (global.game_controller.station_metal_amount > 0)
				{
					double_damage = false;
					global.game_controller.station_metal_amount -= other.metal_one_shot;
				}
				else
				{
					double_damage = true;
					other.hp -= other.metal_one_shot;
				}
				event_user(1);
			}	
		}
		event_user(1);
	}
	
	if (mouse_check_button_pressed(mb_left))
	{
		with (gun_1)
		{
			if (firing_delay_current <= 0)
			{
				if (global.game_controller.station_metal_amount > 0)
				{
					double_damage = false;
					global.game_controller.station_metal_amount -= other.metal_one_shot;
				}
				else
				{
					double_damage = true;
					other.hp -= other.metal_one_shot;
				}
				event_user(1);
			}
		}
		event_user(1);
	}
}
