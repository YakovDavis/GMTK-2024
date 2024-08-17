// Inherit the parent event
event_inherited();

if (place_meeting(x + lengthdir_x(speed, image_angle),
y + lengthdir_y(speed, image_angle), obj_space_station))
{
	obj_space_station.hp -= damage;
	instance_destroy();
}