
// Inherit the parent event
event_inherited();

buy_button = noone;

buy_button_x = 0;
buy_button_y = 0;

event_user(1);

if (!is_max_level)
{
	buy_button = instance_create_layer(x, y, "Buttons", obj_btn_buy_upgrade);
	buy_button.owner = self;
}
