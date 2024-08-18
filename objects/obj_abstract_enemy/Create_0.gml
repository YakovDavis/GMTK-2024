
// Inherit the parent event
event_inherited();

x = room_width * 0.5 + lengthdir_x(sqrt(sqr(room_width) + sqr(room_height)) * 0.5
	+ sqrt(sqr(sprite_width) + sqr(sprite_height)) * 0.5, attack_angle + 180);
y = room_height * 0.5 + lengthdir_y(sqrt(sqr(room_width) + sqr(room_height)) * 0.5
	+ sqrt(sqr(sprite_width) + sqr(sprite_height)) * 0.5, attack_angle + 180);
	image_angle = attack_angle;

hp = max_hp;
