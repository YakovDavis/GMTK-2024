
draw_sprite(sprite_index, clamp(expanded ? 1 : 0, 0, sprite_get_number(sprite_index) - 1), x, y);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(display_name_font);
// feather ignore once GM1044
draw_set_colour(display_name_text_color);
draw_text(x - sprite_width / 2 + text_hmargin, y + text_vmargin, upgrade_group_display_name);

draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_set_font(desc_font);
// feather ignore once GM1044
draw_set_colour(desc_color);
draw_text(x - sprite_width / 2 + text_hmargin, y + sprite_height - text_vmargin, upgrade_group_desc);

draw_set_colour(c_white);
