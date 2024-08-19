/// @description Take damage

hits_left--;
if (hits_left <= 0)
{
	is_active = false;
	sprite_index = noone;
}