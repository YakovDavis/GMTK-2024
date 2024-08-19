/// @description Reset shield

hits_left = max_hits;
if (!is_active)
{
	sprite_index = shield_sprite;
	is_active = true;
}