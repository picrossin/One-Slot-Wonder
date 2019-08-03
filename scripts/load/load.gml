/// @function load(save_name)
/// @param {string} save_name The name of the file to load

with (obj_player) {
	ini_open(argument0);
	
	// player stuff
	x = ini_read_real("player", "x", 32);
	y = ini_read_real("player", "y", 1256);
	current_item = ini_read_real("player", "item", item_type.none);
	
	// item stuff 
	with (obj_throwable) instance_destroy();
	
	var items_string = ini_read_string("items", "item_list", "");
	var items = ds_grid_create(0, 0);
	ds_grid_read(items, items_string);
	
	for (var i = 0; i < ds_grid_height(items); i++) {
		var type_to_create = obj_throwable;
		switch (items[# 2, i]) {
		    case item_type.boots:
		        type_to_create = obj_jump_boots;
		        break;
		    case item_type.gun:
		        type_to_create = obj_gun;
		        break;
			case item_type.hammer:
		        type_to_create = obj_hammer;
		        break;
			case item_type.sword:
		        type_to_create = obj_sword;
		        break;
		}
		
		instance_create_depth(items[# 0, i], items[# 1, i], depth, type_to_create);
	}
	
	ds_grid_destroy(items);
	
	ini_close();
}