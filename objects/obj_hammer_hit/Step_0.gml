if (image_index >= 3) instance_destroy();

if (instance_exists(obj_player)) { 
	x = obj_player.x + dist_from_player;
	y = obj_player.y + 3;
}

if (place_meeting(x, y, obj_brick)) {
	var brick = instance_place(x, y, obj_brick);
	if (brick != noone) {
		audio_play_sound(snd_break_brick, 10, false);
		screen_shake(2, 3);
		instance_destroy(brick);
	}
}