/// @description Take damage event

if (hp < 0)
{
	//game_over
}
else
{
	station_size = metal_to_size(global.game_controller.station_metal_amount);
	event_user(1);
}

