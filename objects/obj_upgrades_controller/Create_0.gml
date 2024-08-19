
// Inherit the parent event
event_inherited();

global.game_controller.upgrades_scroll_top = y;

root_level_items = [];

root_level_items[0] = instance_create_layer(x, y, "Instances", obj_upgrade_group_core);
root_level_items[0].upgrade_controller = self;
root_level_items[0].owner = self;

root_level_items[1] = instance_create_layer(x, y, "Instances", obj_upgrade_group_cannon);
root_level_items[1].upgrade_controller = self;
root_level_items[1].owner = self;
root_level_items[1].upper_neighbor = root_level_items[0];

root_level_items[2] = instance_create_layer(x, y, "Instances", obj_upgrade_group_emp);
root_level_items[2].upgrade_controller = self;
root_level_items[2].owner = self;
root_level_items[2].upper_neighbor = root_level_items[1];

if (global.game_controller.core_shields_level > 0)
{
	root_level_items[3] = instance_create_layer(x, y, "Instances", obj_upgrade_group_shield);
	root_level_items[3].upgrade_controller = self;
	root_level_items[3].owner = self;
	root_level_items[3].upper_neighbor = root_level_items[2];
}
