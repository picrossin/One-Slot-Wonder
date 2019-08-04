/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) && !init) {
	init = true;
	obj_player.freeze = true;
	raise = true;

	alarm[0] = 100;
	audio_play_sound(snd_get_arm, 10, false);
}

if (raise) {
	y -= .5;
} else {
	vspd += grav;

	var moving_down = sign(vspd);
	if (place_meeting(x, y + vspd, obj_wall)) {
		if (init && !crashed) {
			crashed = true;
			audio_play_sound(snd_arm_crash, 10, false);
		}
		while (!place_meeting(x, y + moving_down, obj_wall)) y += moving_down;
		vspd = 0;
	}

	y += floor(vspd);
}
