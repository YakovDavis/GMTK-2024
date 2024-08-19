/// @description Open pause in game

if (room == rm_game)
{
	pause_game();
	room_goto(rm_pause);
}

if (room == rm_pause)
{
	unpause_game();
}
