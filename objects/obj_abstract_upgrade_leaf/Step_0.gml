
// Inherit the parent event
event_inherited();

buy_button_x = x + sprite_width / 2 - obj_btn_buy_upgrade.sprite_width / 2 - button_right_margin;
buy_button_y = y + sprite_height / 2;

if (buy_button != noone)
{
	buy_button.x = buy_button_x;
	buy_button.y = buy_button_y;
}
