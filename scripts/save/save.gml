/// @function save(save_name)
/// @param {string} save_name The name of the file to save

with (obj_player) {
	ini_open(argument0);
	
	// player stuff
	ini_write_real("player", "x", x);
	ini_write_real("player", "y", y);
	ini_write_real("player", "item", current_item);
	
	// items
	// x, y, type
	var items = ds_grid_create(3, 0);

	with (obj_throwable) {
		ds_grid_resize(items, ds_grid_width(items), ds_grid_height(items) + 1);
		var row = ds_grid_height(items) - 1;
		items[# 0, row] = x;
		items[# 1, row] = y;
		items[# 2, row] = type;
	}
	
	ini_write_string("items", "item_list", ds_grid_write(items));
	
	ini_close();
}