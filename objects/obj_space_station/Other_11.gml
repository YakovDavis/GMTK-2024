/// @description Change size event

if (next_change_mask)
{
	mask_subimg = random_range_exclude(0, sprite_get_number(scrap_masks_texture) - 1, mask_subimg);
}
station_size = metal_to_size(global.game_controller.station_metal_amount);

if (station_size >= zoom_last_scale + zoom_out_at)
{
	zoom_last_scale = station_size;
	update_zoom_percentage();
	zoom_camera();
}
else if (station_size <= zoom_last_scale - zoom_in_at && station_size > no_zoom_in_below)
{
	zoom_last_scale = station_size;
	update_zoom_percentage();
	zoom_camera();
}
