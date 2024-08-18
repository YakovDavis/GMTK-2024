
if (upgrade_controller != noone)
{
	if (upper_neighbor != noone)
	{
		y = upper_neighbor.y + upper_neighbor.item_height + upgrade_controller.item_margin;
	}
	else if (owner != noone)
	{
		y = owner.y + owner_voffset;
	}
	else
	{
		y = upgrade_controller.y + owner_voffset;
	}
}
