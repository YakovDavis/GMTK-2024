/// @description On death event

with (obj_game_controller)
{
	station_metal_amount += other.metal_content;
	other.metal_content = 0;
	event_user(2);
}


