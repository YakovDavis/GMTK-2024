/// @description CHEAT: Add metal

if (CHEAT_MODE)
{
	station_metal_amount += 10;
	with(obj_space_station)
	{
		event_user(1);
	}
}
