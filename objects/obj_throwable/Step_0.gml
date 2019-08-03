if (instance_exists(obj_player) && thrown) {
	var angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	image_angle = angle;
	
	can_pickup = false;
	obj_player.throw = false;
	thrown = false;
	alarm[0] = 20;
	
	phy_speed_x = lengthdir_x(4.5, angle);
	phy_speed_y = lengthdir_y(4.5, angle);
}

if (place_meeting(x, y, obj_player)) {
	if (obj_player.current_item == item_type.none && can_pickup && !thrown) {
		obj_player.current_item = type;
		instance_destroy();
	}	
}