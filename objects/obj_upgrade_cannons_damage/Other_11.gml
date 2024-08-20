/// @description Setup event

level = global.game_controller.cannon_damage_increase_level;

if (level < real(global.game_controller.upgrade_prices_grid[# 4, 2]))
{
	upgrade_price = real(global.game_controller.upgrade_prices_grid[# 4, level + 3]);
}
else
{
	is_max_level = true;
}

event_inherited();
