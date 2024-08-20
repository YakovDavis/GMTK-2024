
// Inherit the parent event
event_inherited();

draw_sprite(hp_bar_bkg_sprite, 0, x - sprite_get_width(hp_bar_bkg_sprite) / 2, y + sprite_height * 0.9);
var _hp_ratio = hp / max_hp;
draw_sprite_part(hp_bar_sprite, 0, 0, 0, sprite_get_width(hp_bar_sprite) * _hp_ratio, sprite_get_height(hp_bar_sprite), x - sprite_get_width(hp_bar_sprite) / 2, y + sprite_height * 0.9);