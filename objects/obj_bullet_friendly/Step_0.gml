
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (homing_strength > 0)
{
	var _nearest_enemy = instance_nearest(x, y, obj_abstract_enemy);
	if (_nearest_enemy)
	{
		var _angle_to_enemy = point_direction(x, y, _nearest_enemy.x, _nearest_enemy.y) - direction;
		if (abs(_angle_to_enemy) >= homing_threshold)
		{
			direction += sign(_angle_to_enemy) * homing_strength * base_homing_speed * delta_time;
		}
	}
}

var _hit_enemy = instance_place(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_abstract_enemy);
if (_hit_enemy)
{
	with (_hit_enemy)
	{
		if (other.vampiric_fraction > 0)
		{
			var _stolen_metal = min(metal_content, base_metal_content * other.vampiric_fraction);
			global.game_controller.station_metal_amount += _stolen_metal;
			metal_content -= _stolen_metal;
		}
		hp -= damage;
		event_user(2);
	}
	instance_destroy();
}