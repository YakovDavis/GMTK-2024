/// @description Insert description here
// You can write your code in this editor

damage = real(global.game_controller.base_params_grid[# 1, 8]);
firing_delay = real(global.game_controller.base_params_grid[# 1, 5]);
firing_speed = real(global.game_controller.base_params_grid[# 1, 6]);
attack_radius = real(global.game_controller.base_params_grid[# 1, 7]);
moving_speed = real(global.game_controller.base_params_grid[# 1, 9]);
max_hp = real(global.game_controller.base_params_grid[# 1, 10]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 18]);

// Inherit the parent event
event_inherited();

firing_delay_current = 0;
is_moving = true;