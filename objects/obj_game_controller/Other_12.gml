/// @description Update enemy list event

var _index = 0;

while (_index < array_length(current_phase_enemies))
{
	if (current_phase_enemies[_index].hp <= 0)
	{
		array_delete(current_phase_enemies, _index, 1);
	}
	else
	{
		_index += 1;
	}
}

if (array_length(current_phase_enemies) == 0)
{
	if (DEBUG_MODE > 0)
	{
		show_debug_message("[obj_game_controller] Phase: {0} ended, cooldown {1} seconds", current_phase, real(enemy_phases_grid[# 8, current_phase + 1]));
	}
	current_phase_ended = true;
	next_phase_time = current_time + real(enemy_phases_grid[# 8, current_phase + 1]) * 1000;
}
else
{
	if (DEBUG_MODE > 0)
	{
		show_debug_message("[obj_game_controller] Remaining enemies in phase: {0}", array_length(current_phase_enemies))
	}
}
