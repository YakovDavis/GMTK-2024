draw_sprite(sprite_index, 0, x, y);
hp_ratio = obj_space_station.hp / obj_space_station.max_hp;
draw_sprite_part(spr_hp_bar, 0, 0, 0, sprite_get_width(spr_hp_bar) * hp_ratio, sprite_get_height(spr_hp_bar), x, y);
