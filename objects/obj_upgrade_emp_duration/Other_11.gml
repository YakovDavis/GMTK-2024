/// @description Setup event

level = global.game_controller.emp_duration_increase_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 9, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 9, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
