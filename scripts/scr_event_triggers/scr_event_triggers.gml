/// @function zoom_camera();
/// @returns {Any}

function zoom_camera()
{
	with (obj_abstract_scalable)
	{
		next_zoom_in = global.game_controller.zoom_percent > 0;
		event_user(0);
	}
}

/// @function set_station_size(_size, _change_mask);
/// @param {Real} _size Spacestation size
/// @param {Bool} _change_mask Change the scrap mask?
/// @returns {Any}

function set_station_size(_size, _change_mask)
{
	with (obj_space_station)
	{
		station_size = _size;
		next_change_mask = _change_mask;
		event_user(1);
	}
}

/// @function pause_game();
/// @returns {Any}

function pause_game()
{
	global.is_paused = true;
	toggle_game_actors_visibility(false);
}

/// @function unpause_game();
/// @returns {Any}

function unpause_game()
{
	room_goto(rm_game);
	toggle_game_actors_visibility(true);
	global.is_paused = false;
}
