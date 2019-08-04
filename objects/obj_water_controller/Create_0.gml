/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 10; i++) {
	var water = instance_create_depth(random_range(-1000, -500), 400 + i, 500 - i, obj_water);
	water.x_scroll_speed = .01 + (i / 10);
	water.y_scroll_speed = .01 + (i / 30);
	water.increment_amount = (i / 50);
}