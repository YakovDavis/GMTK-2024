
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (is_waiting)
{
	start_delay -= delta_time * 0.001;
	if (start_delay <= 0)
	{
		is_waiting = false;
	}
	return;
}

if (is_emp_ed)
{
	return;
}

