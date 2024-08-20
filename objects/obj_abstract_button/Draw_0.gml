
var _subimg = is_disabled ? 2 : (focused ? 0 : 1);
_subimg = min(_subimg, sprite_get_number(sprite_index) - 1);

draw_sprite(sprite_index, _subimg, x, y);

if (render_text)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(button_font); //button_font
	// feather ignore once GM1044
	draw_set_colour(focused ? button_text_color_focused : button_text_color_unfocused);
	draw_text_ext(x, y, button_text, text_linesep, sprite_width - text_hmargins * 2);
	draw_set_colour(c_white);
}
