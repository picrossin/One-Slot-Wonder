/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_grain, image_ind, 0, 0);
image_ind++;

draw_sprite(spr_vignette, 0, 0, 0);

if (instance_exists(obj_player)) {
	var frame = 0;
	switch (obj_player.current_item) {
		case item_type.boots:
			frame = 3;
		    break;
		case item_type.sword:
			frame = 1;
			break;
		case item_type.hammer:
			frame = 4;
			break;
		case item_type.gun:
			frame = 2;
			break;
	}
	draw_sprite(spr_slot, frame, 50, 550);
}