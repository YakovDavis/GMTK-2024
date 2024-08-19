/// @description Setup event

level = global.game_controller.core_rotation_speed_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 12, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 12, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
