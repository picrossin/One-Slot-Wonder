with (obj_player) {
	with (obj_gun) instance_destroy();
	if (!instance_exists(obj_useable_gun)) {
		var dist = current_dir == dir.right ? 8 : -8;
		instance_create_depth(x + dist, y, depth, obj_useable_gun);
	}
	
}