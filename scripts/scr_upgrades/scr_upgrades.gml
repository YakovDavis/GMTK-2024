
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
	}
}
