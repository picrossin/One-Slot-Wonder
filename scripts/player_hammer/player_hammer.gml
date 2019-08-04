with (obj_player) {
	if (mouse_check_button_pressed(mb_left)) {
		with (obj_hammer_hit) instance_destroy();
		var dist = current_dir == dir.right ? 4 : -4;
		var hammer = instance_create_depth(x + dist, y + 5, -100, obj_hammer_hit);
		hammer.image_xscale = current_dir == dir.right ? 1 : -1;
	}
}