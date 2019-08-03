enum item_type {
   gun,
   sword,
   boots,
   hammer,
   none
}

enum dir {
	left,
	right
}

current_dir = dir.right;
current_item = item_type.none;

grav = 0.2;
hspd = 0; 
vspd = 0;
run_speed = 2; 
jump_speed = -4;

throw = mouse_check_button_pressed(mb_right);