/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	if (obj_player.current_item = item_type.gun) {
		
		var angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);

		image_angle = angle;
		x = obj_player.x + lengthdir_x(10, angle);
		y = obj_player.y + lengthdir_y(10, angle);
		
		if (mouse_check_button_pressed(mb_left)) {
			sprite_index = spr_sling_shooting;
			shot = true;
		}
		
		if (shot) {
			if (image_index >= 5) {
				audio_play_sound(snd_shoot, 10, false);
				var bullet = instance_create_depth(x, y + lengthdir_y(5, angle + 90), depth, obj_bullet);
				bullet.image_angle = angle;	
				sprite_index = spr_gun_dropped;
				shot = false;
			}
		}
	} else {
		instance_destroy();
	}
	
}
