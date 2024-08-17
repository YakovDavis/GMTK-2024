
if (global.is_paused)
{
	return;
}

// Inherit the parent event
event_inherited();

if (hp <= 0)
{
	part_system_create(ps_station_dmg);
	instance_destroy();
}