/// @function zoom_camera(_in);
/// @param {Bool} _in Zoom in or out
/// @returns {Any}

function zoom_camera(_in)
{
	with (obj_abstract_scalable)
	{
		next_zoom_in = _in;
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
