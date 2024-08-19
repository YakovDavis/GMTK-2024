/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

firing_delay_current = 0;
double_damage = false;

rotation = 0;

is_shotgun = false;
vampiric_fraction = 0;
homing_strength = 0;

base_damage = real(global.game_controller.base_params_grid[# 1, 14])
damage = base_damage;
firing_delay = real(global.game_controller.base_params_grid[# 1, 15]);
firing_speed = real(global.game_controller.base_params_grid[# 1, 16]);
shotgun_half_angle = real(global.game_controller.base_params_grid[# 1, 17]);
