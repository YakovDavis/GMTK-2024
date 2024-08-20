/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sound_alert,100,false);

damage = 0;
firing_delay = 0;
firing_speed = 0;
attack_radius = real(global.game_controller.base_params_grid[# 1, 33]);
moving_speed = real(global.game_controller.base_params_grid[# 1, 40]);
max_hp = real(global.game_controller.base_params_grid[# 1, 38]);
base_metal_content = real(global.game_controller.base_params_grid[# 1, 39]);
damage_from_turret_destruction = real(global.game_controller.base_params_grid[# 1, 37]);

turret_1_dist = point_distance(0, 0, turret1_x_base, turret1_y_base);
turret_2_dist = point_distance(0, 0, turret2_x_base, turret2_y_base);
turret_3_dist = point_distance(0, 0, turret3_x_base, turret3_y_base);

turret_1_dir = point_direction(0, 0, turret1_x_base, turret1_y_base);
turret_2_dir = point_direction(0, 0, turret2_x_base, turret2_y_base);
turret_3_dir = point_direction(0, 0, turret3_x_base, turret3_y_base);

turret_1 = instance_create_layer(x + turret1_x_base, y + turret1_y_base, "Guns", obj_boss_turret);
turret_2 = instance_create_layer(x + turret2_x_base, y + turret2_y_base, "Guns", obj_boss_turret);
turret_3 = instance_create_layer(x + turret3_x_base, y + turret3_y_base, "Guns", obj_boss_turret);

audio_play_sound(sound_music,100,true);

// Inherit the parent event
event_inherited();

is_moving = true;
