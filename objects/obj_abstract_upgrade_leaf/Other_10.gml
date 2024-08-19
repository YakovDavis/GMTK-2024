/// @description Buy button event

/* if (!is_max_level)
{
	if (global.game_controller.metal_amount >= upgrade_price)
	{
		global.game_controller.metal_amount -= upgrade_price;
		level += 1;
		event_user(2);
	}
	else
	{
		return;
	}
}
else
{
	return;
}*/

if (level >= max_level)
{
	level = max_level;
	is_max_level = true;
}

if (is_max_level)
{
	if (buy_button != noone)
	{
		instance_destroy(buy_button);
	}
}
