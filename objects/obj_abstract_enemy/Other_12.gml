/// @description Take damage

if (hp <= 0)
{
	event_user(1);
	instance_destroy();
}