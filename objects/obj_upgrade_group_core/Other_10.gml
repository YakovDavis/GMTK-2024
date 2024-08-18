/// @description Expand event

// Inherit the parent event
event_inherited();

// feather disable GM2016

nested_items[0] = instance_create_layer(x, y, "Instances", obj_upgrade_core_more_metal);
nested_items[0].upgrade_controller = upgrade_controller;
nested_items[0].owner = self;
nested_items[0].owner_voffset = sprite_height + upgrade_controller.item_margin;

item_height += nested_items[0].item_height + upgrade_controller.item_margin;

nested_items[1] = instance_create_layer(x, y, "Instances", obj_upgrade_core_gun_speed);
nested_items[1].upgrade_controller = upgrade_controller;
nested_items[1].owner = self;
nested_items[1].upper_neighbor = nested_items[0];

item_height += nested_items[1].item_height + upgrade_controller.item_margin;

// feather enable GM2016
