/// @description Insert description here
// You can write your code in this editor

damage = real(global.game_controller.base_params_grid[# 1, 11]);
moving_speed = real(global.game_controller.base_params_grid[# 1, 12]);
max_hp = real(global.game_controller.base_params_grid[# 1, 13]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 19]);

// Inherit the parent event
event_inherited();
