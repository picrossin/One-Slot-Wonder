if (instance_exists(obj_player)) audio_sound_gain(noise, 5 - (point_distance(x, y, obj_player.x, obj_player.y) / 10), 0);

if (place_meeting(x, y, obj_sword_slash)) {
	audio_stop_sound(noise);
	audio_play_sound(snd_kill_enemy, 10, false);
	screen_shake(3, 3);	
	instance_destroy();
}
var bullet = instance_place(x, y, obj_bullet);
if (bullet != noone) instance_destroy(bullet);

if (current_dir == dir.right) hspd = spd;
else hspd = -spd;

var moving_right = sign(hspd);
if (place_meeting(x + hspd, y, obj_wall)) {
	while (!place_meeting(x + moving_right, y, obj_wall)) x += moving_right;
	current_dir = moving_right ? dir.left : dir.right;
	hspd = 0;
}

x += hspd;
vspd += grav;

var moving_down = sign(vspd);
if (!position_meeting(x + (moving_right * 4), y + sprite_height + vspd, obj_wall)) current_dir = moving_right ? dir.left : dir.right;
if (place_meeting(x, y + vspd, obj_wall)) {
	while (!place_meeting(x, y + moving_down, obj_wall)) y += moving_down;
	vspd = 0;
}

y += floor(vspd);