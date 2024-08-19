/// @description Take damage

// Inherit the parent event
event_inherited();

if (!is_rotating && !is_moving)
{
	rotation_sign = sign(random_range(-1, 1));
	var _random_angle = random_range(angle_diff_min, angle_diff_max);
	target_angle = image_angle + rotation_sign * _random_angle;
	is_rotating = true;
}