x += lengthdir_x(spd, image_angle);
y += lengthdir_y(spd, image_angle);

if (place_meeting(x, y, obj_wall)) {
	audio_play_sound(snd_hit_target, 10, false);
	var target = instance_place(x, y, obj_target);
	if (target != noone) instance_destroy(target);
	instance_destroy();
}
