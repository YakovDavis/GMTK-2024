/// @description Zoom event

currently_zooming = true;
curve_posx = 0;
prev_scale = current_scale;
next_scale = prev_scale *  (1 + global.game_controller.zoom_percent / 100.0);
