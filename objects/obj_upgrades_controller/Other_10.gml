/// @description Reveal shields group

if (array_length(root_level_items) < 4)
{
	root_level_items[3] = instance_create_layer(x, y, "Instances", obj_upgrade_group_shield);
	root_level_items[3].upgrade_controller = self;
	root_level_items[3].owner = self;
	root_level_items[3].upper_neighbor = root_level_items[2];
}
