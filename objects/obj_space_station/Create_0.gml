
// Inherit the parent event
event_inherited();

station_size = start_station_size;

mask_subimg = 0;
next_change_mask = false;

shader_baseuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fBaseUVs");
shader_maskuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fMaskUVs");
shader_maskscale_uniform = shader_get_uniform(sh_masked_scrap, "u_vMaskScale");
shader_mask_uniform = shader_get_sampler_index(sh_masked_scrap, "u_sMask")

gun_rotation = 0;
gun_1 = instance_create_layer(x + sprite_width * station_size + orbit_margin, y, "Guns", obj_gun);
gun_2 = instance_create_layer(x - sprite_width * station_size - orbit_margin, y, "Guns", obj_gun);
rotating = false;
rotation_speed = rotation_speed_base / start_station_size;