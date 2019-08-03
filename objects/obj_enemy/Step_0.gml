if (place_meeting(x, y, obj_player_weapon)) instance_destroy();

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

y += vspd;