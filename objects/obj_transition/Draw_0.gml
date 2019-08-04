/// @description Insert description here
// You can write your code in this editor
if (start) {
	if (in) {
		alpha += .025;	
		if (alpha >= 1) loaded = true;
	} else {
		if (!init) {
			alpha = 1;
			init = true;
		}
		alpha -= .025;	
		if (alpha <= 0) loaded = true;
	}
	draw_set_alpha(alpha);
	draw_set_colour(c_black);
	draw_rectangle(-1000, -1000, room_width + 1000, room_height + 1000, false);	
	draw_set_alpha(1);
	draw_set_colour(c_white);
}