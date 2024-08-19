/// @description Setup (inherit (put inherited after)!)

if (instance_exists(buy_button))
{
	if (is_max_level)
	{
		instance_destroy(buy_button);
	}
	else
	{
		with (buy_button)
		{
			upgrade_price = other.upgrade_price;
			event_user(0);
		}
	}
}
