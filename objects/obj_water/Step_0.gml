/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_camera)) {
	x = (((obj_camera.x - obj_camera.half_cam_width) * x_scroll_speed) + xstart) + increment;
	y = (((obj_camera.y - obj_camera.half_cam_height) * y_scroll_speed) + ystart);
}

increment += increment_amount;

if (x > room_width) 
	init = true;

if (!init) {
	var water = instance_create_depth(xstart + (sprite_width * image_xscale), ystart, depth, obj_water);
	water.image_xscale = image_xscale;
	water.image_yscale = image_yscale;
	water.x_scroll_speed = x_scroll_speed;
	water.y_scroll_speed = y_scroll_speed;
	water.increment_amount = increment_amount;
	init = true;	
}