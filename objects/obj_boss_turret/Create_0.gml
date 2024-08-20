
damage = real(global.game_controller.base_params_grid[# 1, 34]);
firing_delay = real(global.game_controller.base_params_grid[# 1, 31]);
firing_speed = real(global.game_controller.base_params_grid[# 1, 32]);
attack_radius = real(global.game_controller.base_params_grid[# 1, 33]);
moving_speed = 0;
max_hp = real(global.game_controller.base_params_grid[# 1, 35]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 36]);

// Inherit the parent event
event_inherited();

firing_delay_current = 0;
is_active = false;
