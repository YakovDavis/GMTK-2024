
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (keyboard_check(ord("A")))
{
	gun_rotation += rotation_speed / station_size * delta_time;
}
if (keyboard_check(ord("D")))
{
	gun_rotation -= rotation_speed / station_size * delta_time;
}

if (gun_rotation > 360) gun_rotation -= 360;
else if (gun_rotation < 0) gun_rotation += 360;
gun_1.rotation = gun_rotation + 180;

// Awful code but sprites are all wrong so this is what we have to do
var _gun_dist = sprite_get_width(sprite_index) * 0.5 * station_size * current_scale * 0.8 - 20 + orbit_margin;

gun_1.x = x + lengthdir_x(_gun_dist, gun_rotation + 180);
gun_1.y = y + lengthdir_y(_gun_dist, gun_rotation + 180);
if (has_2_gun)
{
	gun_2.rotation = gun_rotation;
	gun_2.x = x + lengthdir_x(_gun_dist, gun_rotation);
	gun_2.y = y + lengthdir_y(_gun_dist, gun_rotation);
}
if (has_shields)
{
	shield_1.image_angle = gun_rotation + 90;
	shield_1.x = x + lengthdir_x(_gun_dist + offset_shield, gun_rotation + 90);
	shield_1.y = y + lengthdir_y(_gun_dist + offset_shield, gun_rotation + 90);
	shield_2.image_angle = gun_rotation + 270;
	shield_2.x = x + lengthdir_x(_gun_dist + offset_shield, gun_rotation + 270);
	shield_2.y = y + lengthdir_y(_gun_dist + offset_shield, gun_rotation + 270);
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
		event_user(2);
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
		event_user(2);
	}
}
