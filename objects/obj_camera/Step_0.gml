// update destination
if (instance_exists(follow)) {
	xDestination = follow.x;
	yDestination = follow.y;
}

// move towards destination
x += (xDestination - x) / cam_speed;
y += (yDestination - y) / cam_speed;

// clamp camera to room
if (lock_to_room) {
	x = clamp(x, half_cam_width, room_width - half_cam_width);	
	y = clamp(y, half_cam_height, room_height - half_cam_height);
}

// screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

// update view position
camera_set_view_pos(cam, x - half_cam_width, y - half_cam_height);

// parallax backgrounds
if (layer_exists(static_background)) {
	layer_x(static_background, x - half_cam_width);
	layer_y(static_background, y - half_cam_height);
}

if (layer_exists(slow_background)) {
	layer_x(slow_background, (x - half_cam_width) / 1.1);
	layer_y(slow_background, y / 1.05);
}

if (layer_exists(medium_background)) {
	layer_x(medium_background, (x - half_cam_width) / 1.2);
	layer_y(medium_background, (y / 1.075) + 5);
}

if (layer_exists(quick_background)) {
	layer_x(quick_background, (x - half_cam_width) / 1.3);
	layer_y(quick_background, (y / 1.1) + 10);
}

/*
parallax_background("Earth", 1, 1);
parallax_background("Background_mountain_back", 1.1, 1.05);
parallax_background("Background_mountain_middle", 1.2, 1.075);
parallax_background("Background_mountain_front", 1.3, 1.1);
*/