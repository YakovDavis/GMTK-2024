/// @function resize_app(_bw, _bh, _cw, _ch);
/// @param {Real} _bw Base width
/// @param {Real} _bh Base height
/// @param {Real} _cw Current width
/// @param {Real} _ch Current height
/// @returns {Any}

function resize_app(_bw, _bh, _cw, _ch)
{
	var _aspect = (_bw / _bh);
	
	if ((_cw / _aspect) > _ch)
    {
		window_set_size((_ch *_aspect), _ch);
    }
	else
    {
		window_set_size(_cw, (_cw / _aspect));
    }
	
	view_wport[0] = window_get_width();
	view_hport[0] = window_get_height();
	
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}
