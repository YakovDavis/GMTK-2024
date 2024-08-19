/// @description Change size event

if (next_change_mask)
{
	mask_subimg = random_range_exclude(0, sprite_get_number(scrap_masks_texture) - 1, mask_subimg);
}

resetting = true;

if (station_size >= zoom_last_scale + zoom_out_at)
{
	zoom_last_scale = station_size;
	zoom_camera(false);
}
else if (station_size <= zoom_last_scale - zoom_in_at)
{
	zoom_last_scale = station_size;
	zoom_camera(true);
}
