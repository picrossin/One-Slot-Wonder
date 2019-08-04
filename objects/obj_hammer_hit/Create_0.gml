/// @description Insert description here
// You can write your code in this editor
dist_from_player = 0;
if (instance_exists(obj_player)) {
	image_xscale = obj_player.image_xscale;
	dist_from_player = x - obj_player.x;
}