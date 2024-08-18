
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

var _hit_enemy = instance_place(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_abstract_enemy);
if (_hit_enemy)
{
	_hit_enemy.hp -= damage;
	instance_destroy();
}