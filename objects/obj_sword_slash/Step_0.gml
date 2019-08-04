if (image_index >= 3) instance_destroy();

if (instance_exists(obj_player)) { 
	x = obj_player.x + dist_from_player;
	y = obj_player.y;
}