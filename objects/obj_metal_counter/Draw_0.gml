draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(description_font);
draw_text(x, y, description_text);
draw_text(x + string_width(description_text), y, string(global.game_controller.station_metal_amount));
draw_set_colour(c_white);