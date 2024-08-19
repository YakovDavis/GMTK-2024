
// Inherit the parent event
event_inherited();

buy_button = noone;

buy_button_x = 0;
buy_button_y = 0;

upgrade_price = 100;
max_level = 3;

if (!is_max_level)
{
	buy_button = instance_create_layer(x, y, "Buttons", obj_btn_buy_upgrade);
	buy_button.owner = self;
}

event_user(1);
