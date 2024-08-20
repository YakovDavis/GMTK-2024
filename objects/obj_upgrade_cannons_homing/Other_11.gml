/// @description Setup event

level = global.game_controller.cannon_homing_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 6, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 6, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
