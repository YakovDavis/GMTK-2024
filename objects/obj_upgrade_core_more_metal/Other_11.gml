/// @description Setup event

level = global.game_controller.core_metal_gain_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 11, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 11, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
