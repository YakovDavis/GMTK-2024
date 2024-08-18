
if (os_browser != browser_not_a_browser)
{
	if (browser_width != width || browser_height != height)
    {
		if (DEBUG_MODE > 0)
		{
			show_debug_message("[obj_game_controller] Runnings resize code from {0}x{1} to {2}x{3}", width, height, browser_width, browser_height);
		}
		width = browser_width;
		height = browser_height;
		resize_app(base_width, base_height, width, height);
	}
}

upgrades_scroll_y += upgrades_dragging_data;
upgrades_dragging_data *= scroll_drag;

if(upgrades_scroll_y > upgrades_scroll_top)
{
	upgrades_scroll_y = lerp(upgrades_scroll_y, upgrades_scroll_top, 0.1);
}
else if(upgrades_scroll_y < -upgrades_scroll_bottom)
{
	upgrades_scroll_y = lerp(upgrades_scroll_y, -upgrades_scroll_bottom, 0.1);
}
