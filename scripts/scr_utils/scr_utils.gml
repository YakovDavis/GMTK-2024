/// @function random_range_exclude(_n1, _n2, _exclude);
/// @pure
/// @param {Real} _n1 Low end
/// @param {Real} _n2 High end
/// @param {Real} _exclude Value not to generate
/// @returns {Real}

function random_range_exclude(_n1, _n2, _exclude)
{
	if (_n1 == _n2)
	{
		return _n1;
	}
	var _result = 0;
	do
	{
		_result = round(random_range(_n1, _n2));
	} until _result != _exclude;
	return _result;
}

/// @function toggle_game_actors_visibility(_visible);
/// @param {Real} _visible 
/// @returns {Any}

function toggle_game_actors_visibility(_visible)
{
	with (obj_space_station)
	{
		visible = _visible;
	}
	with (obj_gun)
	{
		visible = _visible;
	}
	with (obj_abstract_bullet)
	{
		visible = _visible;
	}
}
