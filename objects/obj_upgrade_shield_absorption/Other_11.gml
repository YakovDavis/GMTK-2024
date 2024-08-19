/// @description Setup event

level = global.game_controller.shield_hit_absorption_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 2, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 2, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
