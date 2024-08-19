
// Inherit the parent event
event_inherited();

start_station_size = metal_to_size(global.game_controller.station_metal_amount) + 1;
max_hp = real(global.game_controller.base_params_grid[# 1, 2]);
metal_one_shot = real(global.game_controller.base_params_grid[# 1, 3]);
rotation_speed_base = real(global.game_controller.base_params_grid[# 1, 4]);

station_size = start_station_size;

mask_subimg = 0;
next_change_mask = false;

shader_baseuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fBaseUVs");
shader_maskuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fMaskUVs");
shader_maskscale_uniform = shader_get_uniform(sh_masked_scrap, "u_vMaskScale");
shader_mask_uniform = shader_get_sampler_index(sh_masked_scrap, "u_sMask")

gun_rotation = 0;
gun_1 = instance_create_layer(x + sprite_width * 0.5 * station_size + orbit_margin, y, "Guns", obj_gun);
gun_2 = instance_create_layer(x - sprite_width * 0.5 * station_size - orbit_margin, y, "Guns", obj_gun);
resetting = true;
rotation_speed = rotation_speed_base / start_station_size;

hp = max_hp;
