
event_inherited();

if (!global.game_controller.emp_cooldown_active)
{
	if (global.game_controller.station_metal_amount >= emp_cost)
	{
		global.game_controller.station_metal_amount -= emp_cost;
		with (obj_space_station)
		{
			event_user(2);
		}
		with (obj_game_controller)
		{
			event_user(3);
		}
	}
}
