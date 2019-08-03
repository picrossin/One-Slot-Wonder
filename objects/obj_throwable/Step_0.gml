var moving_right = sign(hspd);
if (place_meeting(x + hspd, y, obj_wall)) {
    while (!place_meeting(x + moving_right, y, obj_wall)) x += moving_right;
    hspd = 0;
}
x += hspd;

vspd += grav;

var moving_down = sign(vspd);
if (place_meeting(x, y + vspd, obj_wall)) {
    while (!place_meeting(x, y + moving_down, obj_wall)) y += moving_down;
    vspd = 0;
}

y += vspd;