/// @description Setup event

level = global.game_controller.core_shields_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 13, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 13, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
