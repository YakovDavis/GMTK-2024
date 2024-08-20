/// @description EMP started event

emp_active = true;
emp_cooldown_active = true;
emp_toggle(emp_active);
emp_timer = 0;
emp_duration = real(base_params_grid[# 1, 28]);
if (emp_duration_increase_level > 0)
{
	emp_duration += real(upgrade_params_grid[# 8, emp_duration_increase_level + 2])
}
emp_cooldown_duration = real(base_params_grid[# 1, 29]);
if (emp_cooldown_decrease_level > 0)
{
	emp_cooldown_duration *= 1 - 0.01 * real(upgrade_params_grid[# 8, emp_cooldown_decrease_level + 2])
}
