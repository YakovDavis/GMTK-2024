
if (global.is_paused)
{
	return;
}

if (currently_zooming)
{
	if (curve_posx >= 1)
	{
		curve_posx = 1;
		currently_zooming = false;
		current_scale = next_scale;
		image_xscale = current_scale;
		image_yscale = current_scale;
	}
	else
	{
		var _curve_val = animcurve_channel_evaluate(zoom_curve_channel, curve_posx);
		current_scale = lerp(prev_scale, next_scale, _curve_val);
		image_xscale = current_scale;
		image_yscale = current_scale;
		curve_posx += delta_time * zoom_speed;
	}
}
