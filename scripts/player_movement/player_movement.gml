with (obj_player) {
	//Get inputs (1 = pressed, 0 = not pressed)
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
	jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));
	throw = mouse_check_button_pressed(mb_right);

	if (mouse_x > x) current_dir = dir.right;
	else current_dir = dir.left;

	if (key_right) {
		hspd = run_speed;
		current_dir = dir.right;
	}
	if (key_left) { 
		hspd = -run_speed;
		current_dir = dir.left;
	}
	
	if (!key_right && !key_left) 
	{
		sprite_index = current_dir == dir.right ? spr_player_idle_right : spr_player_idle_left;
		hspd = 0;
	} else {
		sprite_index = current_dir == dir.right ? spr_run_right : spr_run_left;
	}

	var moving_right = sign(hspd);
	if (place_meeting(x + hspd, y, obj_wall)) {
	    while (!place_meeting(x + moving_right, y, obj_wall)) x += moving_right;
	    hspd = 0;
	}
	x += hspd;

	if (place_meeting(x, y + 1, obj_wall) && key_jump) {
		jumped = true;
		vspd = jump_speed; 
		var sound = current_item == item_type.boots ? snd_big_jump : snd_jump;
		audio_play_sound(sound, 10, false);
	}
	
	if (vspd < 0 && !jump_held) {
		vspd = max(vspd, -2);
	}	
	
	vspd += grav;

	
	var moving_down = sign(vspd);
	if (place_meeting(x, y + vspd, obj_wall)) {
		if (jumped) {
			audio_play_sound(snd_land, 10, false);
			jumped = false;
		}
	    while (!place_meeting(x, y + moving_down, obj_wall)) y += moving_down;
	    vspd = 0;
	}

	y += floor(vspd);
	
	if (throw) player_throw(false, 0);
}