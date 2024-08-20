/// @description Successful purchase event

global.game_controller.core_shields_level += 1;

with (obj_upgrades_controller)
{
	event_user(0);
}
