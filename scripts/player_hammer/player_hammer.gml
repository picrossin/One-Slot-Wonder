with (obj_player) {
	if (mouse_check_button_pressed(mb_left)) {
		with (obj_hammer_hit) instance_destroy();
		var dist = current_dir == dir.right ? 8 : -8;
		instance_create_depth(x + dist, y, depth, obj_hammer_hit);
	}
}