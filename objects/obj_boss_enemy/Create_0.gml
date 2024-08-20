/// @description Insert description here
// You can write your code in this editor

damage = real(global.game_controller.base_params_grid[# 1, 8]);
firing_delay = real(global.game_controller.base_params_grid[# 1, 5]);
firing_speed = real(global.game_controller.base_params_grid[# 1, 6]);
attack_radius = real(global.game_controller.base_params_grid[# 1, 7]);
moving_speed = real(global.game_controller.base_params_grid[# 1, 9]);
max_hp = real(global.game_controller.base_params_grid[# 1, 10]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 18]);

turret_1_dist = point_distance(0, 0, turret1_x_base, turret1_y_base);
turret_2_dist = point_distance(0, 0, turret2_x_base, turret2_y_base);
turret_3_dist = point_distance(0, 0, turret3_x_base, turret3_y_base);

turret_1_dir = point_direction(0, 0, turret1_x_base, turret1_y_base);
turret_2_dir = point_direction(0, 0, turret2_x_base, turret2_y_base);
turret_3_dir = point_direction(0, 0, turret3_x_base, turret3_y_base);

turret_1 = instance_create_layer(x + turret1_x_base, y + turret1_y_base, "Guns", obj_boss_turret);
turret_2 = instance_create_layer(x + turret2_x_base, y + turret2_y_base, "Guns", obj_boss_turret);
turret_3 = instance_create_layer(x + turret3_x_base, y + turret3_y_base, "Guns", obj_boss_turret);

// Inherit the parent event
event_inherited();

is_moving = true;
