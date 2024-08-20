
// Inherit the parent event
event_inherited();

max_hp = real(global.game_controller.base_params_grid[# 1, 2]);
metal_one_shot = real(global.game_controller.base_params_grid[# 1, 3]);
rotation_speed_base = real(global.game_controller.base_params_grid[# 1, 4]);

station_size = metal_to_size(global.game_controller.station_metal_amount);
zoom_last_scale = station_size;

mask_subimg = 0;
next_change_mask = false;

shader_baseuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fBaseUVs");
shader_maskuvs_uniform = shader_get_uniform(sh_masked_scrap, "u_fMaskUVs");
shader_maskscale_uniform = shader_get_uniform(sh_masked_scrap, "u_vMaskScale");
shader_mask_uniform = shader_get_sampler_index(sh_masked_scrap, "u_sMask")

gun_rotation = 0;
gun_1 = instance_create_layer(x - sprite_width * 0.5 * station_size - orbit_margin, y, "Guns", obj_gun);
gun_2 = noone; //  instance_create_layer(x + sprite_width * 0.5 * station_size + orbit_margin, y, "Guns", obj_gun);
has_2_gun = false;
rotation_speed = rotation_speed_base;

hp = max_hp;
shield_1 = noone;
shield_2 = noone;
has_shields = false;

// TEST: Boss
//instance_create_layer(0, 0, "Instances", obj_boss_enemy);

update_zoom_percentage();
zoom_camera();
