
draw_sprite(sprite_index, clamp((focused ? 0 : 1), 0, sprite_get_number(sprite_index) - 1), x, y);

if (render_text)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(button_font);
	// feather ignore once GM1044
	draw_set_colour(focused ? button_text_color_focused : button_text_color_unfocused);
	draw_text(x, y, button_text);
	draw_set_colour(c_white);
}
