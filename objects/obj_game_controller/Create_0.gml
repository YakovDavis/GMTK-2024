
if (instance_count > 1)
{
	show_debug_message("[obj_game_controller] Destroying extra controller");
	instance_destroy(self);
}

#macro DEBUG_MODE 2 // 0 - off, 1 - game debug options, 2 - game debug options and overlay

if (DEBUG_MODE > 1)
{
	show_debug_log(true);
}

randomize();

width = base_width;
height = base_height;
