/// @description Take damage event

if (hp < 0)
{
	room_goto(rm_game_over);
}
else
{
	event_user(1);
}

