/// @description Collapse event

for (var _index = array_length(nested_items) - 1; _index >= 0; _index -= 1)
{
	instance_destroy(nested_items[_index]);
}
nested_items = [];
item_height = sprite_height;
