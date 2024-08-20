
var _subimg = 0;
if (obj_space_station.hp < obj_space_station.damaged_hp)
{
	_subimg = 1;
}
draw_sprite_ext(sprite_index, _subimg, x + current_outer_x, y + current_outer_y, current_scale, current_scale, 0, c_white, 1);
draw_sprite_ext(inner_sprite, _subimg, x + current_outer_x + current_inner_x, y + current_outer_y + current_inner_y, current_scale, current_scale, 0, c_white, 1);
