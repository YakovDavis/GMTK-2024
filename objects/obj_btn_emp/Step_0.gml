
if (global.is_paused)
{
	return;
}

if (global.game_controller.emp_cooldown_active)
{
	is_disabled = true;
	button_text = string("EMP ({0} s)\n{1}",
		(global.game_controller.emp_cooldown_duration - global.game_controller.emp_cooldown_timer) / 1000.0,
		emp_cost);
}
else
{
	is_disabled = false;
	button_text = string("EMP\n{0}",
		emp_cost);
}
