/// @description Insert description here
// You can write your code in this editor
x = (xstart) + increment;


increment += increment_amount;

spawn = x > -1000;

if (!init && spawn) {
	var water = instance_create_depth(x - (sprite_width * image_xscale) + 3, y, depth, obj_water_non_cam);
	water.image_xscale = image_xscale;
	water.image_yscale = image_yscale;
	water.x_scroll_speed = x_scroll_speed;
	water.y_scroll_speed = y_scroll_speed;
	water.increment_amount = increment_amount;
	init = true;	
}