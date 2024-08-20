/// @description Buy button event

if (!is_max_level)
{
	if (global.game_controller.station_metal_amount >= upgrade_price)
	{
		global.game_controller.station_metal_amount -= upgrade_price;
		level += 1;
		event_user(2);
		event_user(1);
	}
	else
	{
		return;
	}
}
else
{
	return;
}

if (is_max_level)
{
	if (instance_exists(buy_button))
	{
		instance_destroy(buy_button);
		buy_button = noone;
	}
}
else
{
	if (instance_exists(buy_button))
	{
		with (buy_button)
		{
			event_user(0);
		}
	}
}
