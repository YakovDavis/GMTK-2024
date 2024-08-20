
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

// Enemy spawning and phase switching
if (global.is_game_initialized && !global.is_paused)
{
	if (current_phase_ended && current_time >= next_phase_time)
	{
		current_phase += 1;
		display_phase += 1;
		current_phase_ended = false;
		if (current_phase > real(enemy_phases_grid[# 10, 1]) - 2)
		{
			show_debug_message("[obj_game_controller] Phase is over the limit {0}, looping", real(enemy_phases_grid[# 1, 10]) - 1);
			current_phase -= real(enemy_phases_grid[# 9, 1]) - 1;
		}
		if (DEBUG_MODE > 0)
		{
			show_debug_message("[obj_game_controller] Starting phase {0}", current_phase);
		}
		
		current_phase_enemies = spawn_all_phase_enemies(enemy_phases_grid, current_phase);
		
		with (obj_space_station) event_user(4);
	}
}

if (!global.is_paused && room == rm_game)
{
	if (emp_active)
	{
		if (emp_timer >= emp_duration)
		{
			emp_toggle(false);
			emp_active = false;
			emp_cooldown_active = true;
			emp_cooldown_timer = 0;
		}
		else
		{
			emp_timer += delta_time / 1000.0;
		}
	}
	else if (emp_cooldown_active)
	{
		if (emp_cooldown_timer >= emp_cooldown_duration)
		{
			emp_cooldown_active = false;
		}
		else
		{
			emp_cooldown_timer += delta_time / 1000.0;
		}
	}
}
