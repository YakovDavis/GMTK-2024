/// @description Change size event

if (next_change_mask)
{
	mask_subimg = random_range_exclude(0, sprite_get_number(scrap_masks_texture) - 1, mask_subimg);
}

rotation_speed = rotation_speed_base / station_size;
resetting = true;
