
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (hp <= 0)
{
	instance_destroy();
}