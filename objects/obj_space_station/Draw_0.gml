
shader_set(sh_masked_scrap);
shader_set_uniform_f_array(shader_baseuvs_uniform, sprite_get_uvs(scrap_texture, 0));
shader_set_uniform_f_array(shader_maskuvs_uniform, sprite_get_uvs(scrap_masks_texture, mask_subimg));
shader_set_uniform_f(shader_maskscale_uniform, 1.0 / station_size, 1.0 / station_size);
texture_set_stage(shader_mask_uniform, sprite_get_texture(scrap_masks_texture, mask_subimg));
draw_sprite_ext(scrap_texture, 0, x, y, current_scale, current_scale, 0, c_white, 1);
shader_reset();

draw_sprite_ext(sprite_index, 0, x, y, current_scale, current_scale, 0, c_white, 1);
