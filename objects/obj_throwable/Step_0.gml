if (held && instance_exists(obj_player)) {
	held = obj_player.holding;
	
	var angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	image_angle = angle;
	x = obj_player.x + lengthdir_x(50, angle);
	y = obj_player.y + lengthdir_y(50, angle);
} else {
	var moving_right = sign(hspd);
	if (place_meeting(x + hspd, y, obj_wall)) {
	    while (!place_meeting(x + moving_right, y, obj_wall)) x += moving_right;
	    hspd = 0;
	}
	x += hspd;

	vspd += grav;

	var moving_down = sign(vspd);
	if (place_meeting(x, y + vspd, obj_wall)) {
	    while (!place_meeting(x, y + moving_down, obj_wall)) y += moving_down;
	    vspd = 0;
	}

	y += vspd;
}