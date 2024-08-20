/// @description Clean up on entering menu rooms

if (room == rm_menu || room == rm_settings || room == rm_game_over)
{
	instance_destroy();
}
