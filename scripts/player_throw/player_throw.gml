with (obj_player) {
	save("undo.ini");
	var item = obj_throwable;
	var nothing = false;
	switch (current_item) {
		case item_type.boots:
			item = obj_jump_boots;
		    break;
		case item_type.sword:
			item = obj_sword;
			break;
		case item_type.hammer:
			item = obj_hammer;
			break;
		case item_type.gun:
			item = obj_gun;
			break;
		default:
			nothing = true;
			break;
	}	
	if (!nothing) {
		current_item = item_type.none;
			
		audio_play_sound(snd_throw, 10, false);
		var thrown_item = instance_create_depth(x, y, depth, item);
		thrown_item.thrown = true;
		if (argument0) {
			thrown_item.angle = argument1;	
			thrown_item.deflected = true;
		}
	}	
}