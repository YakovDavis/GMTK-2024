/// @description Check web

if (os_browser != browser_not_a_browser)
{
	instance_destroy(self);
}

event_inherited();

