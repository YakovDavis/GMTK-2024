
// Inherit the parent event
event_inherited();

if (is_focused)
{
	objective_outer_x = lengthdir_x(raduius_outer, focus_angle);
	objective_outer_y = lengthdir_y(raduius_outer, focus_angle);
	objective_inner_x = lengthdir_x(radius_inner, focus_angle);
	objective_inner_y = lengthdir_y(radius_inner, focus_angle);
}
else
{
	objective_outer_x = 0;
	objective_outer_y = 0;
	objective_inner_x = 0;
	objective_inner_y = 0;
}

if (current_outer_x < objective_outer_x)
{
	current_outer_x = min(current_outer_x + delta_time * speed_outer, objective_outer_x);
}
else if (current_outer_x > objective_outer_x)
{
	current_outer_x = max(current_outer_x - delta_time * speed_outer, objective_outer_x);
}
if (current_outer_y < objective_outer_y)
{
	current_outer_y = min(current_outer_y + delta_time * speed_outer, objective_outer_y);
}
else if (current_outer_y > objective_outer_y)
{
	current_outer_y = max(current_outer_y - delta_time * speed_outer, objective_outer_x);
}

if (current_inner_x < objective_inner_x)
{
	current_inner_x = min(current_inner_x + delta_time * speed_outer, objective_inner_x);
}
else if (current_inner_x > objective_inner_x)
{
	current_inner_x = max(current_inner_x - delta_time * speed_outer, objective_inner_x);
}
if (current_inner_y < objective_inner_y)
{
	current_inner_y = min(current_inner_y + delta_time * speed_outer, objective_inner_y);
}
else if (current_inner_y > objective_inner_y)
{
	current_inner_y = max(current_inner_y - delta_time * speed_outer, objective_inner_x);
}

var _boss = instance_nearest(x, y, obj_boss_enemy);
if (_boss != noone)
{
	is_focused = true;
	focus_angle = point_direction(x, y, _boss.x, _boss.y)
}
else
{
	var _kamikaze = instance_nearest(x, y, obj_kamikaze_enemy);
	if (_kamikaze != noone)
	{
		is_focused = true;
		focus_angle = point_direction(x, y, _kamikaze.x, _kamikaze.y)
	}
	else
	{
		var _ace = instance_nearest(x, y, obj_ace_enemy);
		if (_ace != noone)
		{
			is_focused = true;
			focus_angle = point_direction(x, y, _ace.x, _ace.y)
		}
		else
		{
			var _enemy = instance_nearest(x, y, obj_shooting_enemy);
			if (_enemy != noone)
			{
				is_focused = true;
				focus_angle = point_direction(x, y, _enemy.x, _enemy.y)
			}
			else
			{
				is_focused = false;
			}
		}
	}
}
