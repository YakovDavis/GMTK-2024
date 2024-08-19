/// @description Initialize game event

current_phase = 0;
boss_present = false;
next_phase_time = current_time + real(enemy_phases_grid[# 8, 1]) * 1000;

global.is_game_initialized = true;

boss_present = spawn_all_phase_enemies(enemy_phases_grid, current_phase);
