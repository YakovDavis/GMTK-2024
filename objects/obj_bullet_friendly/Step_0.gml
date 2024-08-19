// Inherit the parent event
event_inherited();

var _hit_enemy = instance_place(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_abstract_enemy);
if (_hit_enemy)
{
	with (_hit_enemy)
	{
		hp -= damage;
		event_user(2);
	}
	instance_destroy();
}