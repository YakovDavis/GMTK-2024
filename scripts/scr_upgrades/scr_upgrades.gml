
/// @function apply_all_upgrades();
/// @returns {Any}

function apply_all_upgrades()
{
	with (obj_gun)
	{
		var _damage_multiplier = 1;
		if (global.game_controller.cannon_damage_increase_level > 0)
		{
			_damage_multiplier += 0.01 * real(global.game_controller.upgrade_params_grid[# 4, global.game_controller.cannon_damage_increase_level + 2])
		}
		if (global.game_controller.cannon_shotgun_level > 0)
		{
			is_shotgun = true;
			_damage_multiplier *= real(global.game_controller.upgrade_params_grid[# 5, global.game_controller.cannon_shotgun_level + 2])
		}
		else
		{
			is_shotgun = false;
		}
		damage = base_damage * _damage_multiplier;
	}
	with (obj_space_station)
	{
		rotation_speed = rotation_speed_base;
		if (global.game_controller.core_rotation_speed_level > 0)
		{
			rotation_speed *= 1 + 0.01 * real(global.game_controller.upgrade_params_grid[# 11, global.game_controller.cannon_shotgun_level + 2]);
		}
		if (!has_shields && global.game_controller.core_shields_level > 0)
		{
			event_user(3);
		}
		if (!has_2_gun && global.game_controller.cannon_extra_cannon_level > 0)
		{
			event_user(5);
		}
	}
	with (obj_shield)
	{
		if (global.game_controller.shield_hit_absorption_level > 0)
		{
			max_hits = real(global.game_controller.upgrade_params_grid[# 2, global.game_controller.cannon_shotgun_level + 2]);
		}
		switch (global.game_controller.shield_radius_increase_level)
		{
			case 0:
				sprite_index = level0_sprite;
				break;
			case 1:
				sprite_index = level1_sprite;
				break;
			case 2:
				sprite_index = level2_sprite;
				break;
			case 3:
				sprite_index = level3_sprite;
				break;
		}
	}
}
