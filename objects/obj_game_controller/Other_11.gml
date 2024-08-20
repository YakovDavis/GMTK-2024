/// @description Initialize game event

current_phase = 0;
boss_present = false;
next_phase_time = current_time + real(enemy_phases_grid[# 8, 1]) * 1000;
emp_active = false;
display_phase = 1;

station_metal_amount = real(global.game_controller.base_params_grid[# 1, 1]);
enemy_max_delay = real(global.game_controller.base_params_grid[# 1, 41]);

shield_radius_increase_level = 0;
shield_hit_absorption_level = 0;
shield_reflector_level = 0;
cannon_damage_increase_level = 0;
cannon_shotgun_level = 0;
cannon_homing_level = 0;
cannon_vampiric_level = 0;
cannon_extra_cannon_level = 0;
emp_duration_increase_level = 0;
emp_cooldown_decrease_level = 0;
core_shields_level = 0;
core_metal_gain_level = 0;
core_rotation_speed_level = 0;

global.is_game_initialized = true;

boss_present = spawn_all_phase_enemies(enemy_phases_grid, current_phase);
