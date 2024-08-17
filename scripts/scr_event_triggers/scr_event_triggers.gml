/// @function resize_app(_bw, _bh, _cw, _ch);
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