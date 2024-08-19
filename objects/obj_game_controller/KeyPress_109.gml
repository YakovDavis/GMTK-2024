/// @description CHEAT: Remove metal

if (CHEAT_MODE)
{
	station_metal_amount -= 10;
	station_metal_amount = max(0, station_metal_amount);
	with(obj_space_station)
	{
		event_user(1);
	}
}
