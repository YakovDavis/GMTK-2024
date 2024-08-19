/// @description Open upgrade menu

if (room == rm_game)
{
	pause_game();
	room_goto(rm_upgrade);
}

if (room == rm_upgrade)
{
	unpause_game();
}
