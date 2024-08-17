/// @description Clean up on entering menu rooms

if (room == rm_menu || room == rm_settings)
{
	instance_destroy();
}
