/// @description Clean up on entering menu rooms

event_inherited();

if (room == rm_game)
{
	event_user(1);
}
