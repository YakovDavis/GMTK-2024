
shader_set(sh_masked_scrap);
shader_set_uniform_f_array(shader_baseuvs_uniform, sprite_get_uvs(scrap_texture, 0));
shader_set_uniform_f_array(shader_maskuvs_uniform, sprite_get_uvs(scrap_masks_texture, mask_subimg));
shader_set_uniform_f(shader_maskscale_uniform, 1.0 / station_size, 1.0 / station_size);
gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha);
texture_set_stage(shader_mask_uniform, sprite_get_texture(scrap_masks_texture, mask_subimg));
draw_sprite_ext(scrap_texture, 0, x, y, current_scale, current_scale, 0, c_white, 1);
shader_reset();
gpu_set_blendmode(bm_normal);

var _subimg = 0;
if (hp < very_damaged_hp)
{
	_subimg = 2;
}
else if (hp < damaged_hp)
{
	_subimg = 1;
}
draw_sprite_ext(sprite_index, _subimg, x, y, current_scale, current_scale, 0, c_white, 1);
