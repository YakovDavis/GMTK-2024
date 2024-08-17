
draw_self();

draw_sprite(slider_knob_sprite, 0, x + slider_lmargin + slider_pos * (sprite_width - slider_rmargin - slider_lmargin), y + slider_knob_vofffset );

draw_set_font(slider_text_font);
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text(x + slider_text_hoffset, y + slider_text_voffset, slider_text);
