
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (hp <= 0)
{
	event_user(1);
	instance_destroy();
}