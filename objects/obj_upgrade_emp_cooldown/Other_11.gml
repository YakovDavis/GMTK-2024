/// @description Setup event

level = global.game_controller.emp_cooldown_decrease_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 10, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 10, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
