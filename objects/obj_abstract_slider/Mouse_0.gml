/// @description Update slider pos (inherit!) 

var _frac = (mouse_x - (x + slider_lmargin)) / (sprite_width - slider_rmargin - slider_lmargin);
slider_pos = clamp(_frac, 0, 1);

