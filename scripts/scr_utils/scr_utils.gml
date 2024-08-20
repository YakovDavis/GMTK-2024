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
		speed = _visible ? bullet_speed : 0;
	}
	with (obj_abstract_enemy)
	{
		visible = _visible;
	}
	with (obj_shield)
	{
		visible = _visible;
	}
}

/// @function get_random_point_on_circle(_cx, _cy, _r);
/// @pure
/// @param {Real} _cx
/// @param {Real} _cy
/// @param {Real} _r
/// @returns {Array<Real>}

function get_random_point_on_circle(_cx, _cy, _r)
{
	var _res = [];
	var _angle = random_range(0, 360);
	_res[0] = lengthdir_x(_r, _angle) + _cx;
	_res[1] = lengthdir_y(_r, _angle) + _cy;
	return _res;
}

/// @function spawn_enemies(_type, _count);
/// @param {Asset.GMObject} _type
/// @param {Real} _count
/// @returns {Array<Id.Instance>}

function spawn_enemies(_type, _count)
{
	var _res = [];
	var _station_x = obj_space_station.x;
	var _station_y = obj_space_station.y;
	for(var _i = 0; _i < _count; _i += 1)
	{
		var _coords = get_random_point_on_circle(_station_x, _station_y, ship_spawn_radius);
		_res[_i] = instance_create_layer(_coords[0], _coords[1], "Instances", _type);
		_res[_i].start_delay = random_range(0, global.game_controller.enemy_max_delay);
	}
	return _res;
}

/// @function spawn_all_phase_enemies(_csv, _phase);
/// @param {Id.DsGrid} _csv
/// @param {Real} _phase
/// @returns {Array<Id.Instance>}

function spawn_all_phase_enemies(_csv, _phase)
{
	var _regular_enemy_count = round(random_range(real(global.game_controller.enemy_phases_grid[# 1, current_phase + 1]), real(global.game_controller.enemy_phases_grid[# 2, current_phase + 1])));
	var _kamikaze_count = round(random_range(real(global.game_controller.enemy_phases_grid[# 3, current_phase + 1]), real(global.game_controller.enemy_phases_grid[# 4, current_phase + 1])));
	var _ace_count = round(random_range(real(global.game_controller.enemy_phases_grid[# 5, current_phase + 1]), real(global.game_controller.enemy_phases_grid[# 6, current_phase + 1])));
	var _boss_count = real(global.game_controller.enemy_phases_grid[# 7, current_phase + 1]);
		
	if (DEBUG_MODE > 0)
	{
		show_debug_message("[obj_game_controller] Spawning {0} regular enemies, {1} kamikaze enemies, {2} ace enemies, {3} bosses",
			_regular_enemy_count, _kamikaze_count, _ace_count, _boss_count);
	}
	
	var _res = spawn_enemies(global.game_controller.regular_enemy, _regular_enemy_count);
	_res = array_concat(_res, spawn_enemies(global.game_controller.kamikaze_enemy, _kamikaze_count));
	_res = array_concat(_res, spawn_enemies(global.game_controller.ace_enemy, _ace_count));
	_res = array_concat(_res, spawn_enemies(global.game_controller.boss_enemy, _boss_count));
	
	return _res;
}

/// @function emp_toggle(_enable);
/// @param {Bool} _enable
/// @returns {Any}

function emp_toggle(_enable)
{
	with (obj_abstract_enemy)
	{
		is_emp_ed = _enable;
	}
}

/// @function update_zoom_percentage();
/// @returns {Any}

function update_zoom_percentage()
{
	var _current_size = 0;
	with (obj_space_station)
	{
		_current_size = sprite_width *station_size * current_scale;
	}
	with (obj_game_controller)
	{
		zoom_percent = 100 * (1 - _current_size / desired_station_size) / 4;
	}
}
