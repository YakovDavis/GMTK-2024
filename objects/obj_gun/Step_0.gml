
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

image_angle = rotation;
firing_delay_current = max(0, firing_delay_current - 1);