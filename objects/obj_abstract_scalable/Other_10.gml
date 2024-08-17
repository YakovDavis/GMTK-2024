/// @description Zoom event

currently_zooming = true;
curve_posx = 0;
prev_scale = current_scale;
next_scale = prev_scale * (next_zoom_in ? 1 + zoom_percent / 100.0 : 1 - zoom_percent / 100.0);
