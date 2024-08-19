
// Inherit the parent event
event_inherited();

buy_button = noone;

buy_button_x = 0;
buy_button_y = 0;

upgrade_price = 100;

buy_button = instance_create_layer(x, y, "Buttons", obj_btn_buy_upgrade);
buy_button.owner = self;

buy_button_width = buy_button.sprite_width;

if (is_max_level)
{
	instance_destroy(buy_button);
	buy_button = noone
}

event_user(1);
