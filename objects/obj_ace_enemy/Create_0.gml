
damage = real(global.game_controller.base_params_grid[# 1, 24]);
firing_delay = real(global.game_controller.base_params_grid[# 1, 21]);
firing_speed = real(global.game_controller.base_params_grid[# 1, 22]);
attack_radius = real(global.game_controller.base_params_grid[# 1, 23]);
moving_speed = real(global.game_controller.base_params_grid[# 1, 25]);
max_hp = real(global.game_controller.base_params_grid[# 1, 26]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 20]);

// Inherit the parent event
event_inherited();

target_angle = 0;
rotation_sign = 0;