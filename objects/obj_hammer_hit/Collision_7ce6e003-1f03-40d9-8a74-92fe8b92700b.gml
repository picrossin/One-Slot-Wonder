/// @description Insert description here
// You can write your code in this editor
var brick = instance_place(x, y, obj_brick);
if (brick != noone) {
	instance_destroy(brick);
	instance_destroy();
}