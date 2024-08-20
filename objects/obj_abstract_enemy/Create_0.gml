
// Inherit the parent event
event_inherited();

attack_angle = point_direction(x, y, obj_space_station.x, obj_space_station.y);
image_angle = attack_angle;

hp = max_hp;

is_emp_ed = false;

metal_content = base_metal_content;

if (global.game_controller.core_metal_gain_level > 0)
{
	metal_content *= 1 + 0.01 * real(global.game_controller.upgrade_params_grid[# 10, core_metal_gain_level + 2]);
}

start_delay = 3000;
is_waiting = true;

current_scale = obj_space_station.current_scale;
