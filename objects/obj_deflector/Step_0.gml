/// @description Insert description here
// You can write your code in this editor
var item = instance_place(x, y, obj_throwable);
if (place_meeting(x, y, obj_player)) {
	if !audio_is_playing(snd_deflector) audio_play_sound(snd_deflector, 10, false);
	if (obj_player.current_item != item_type.none) {
		if (horizontal) {
			if (obj_player.x > x) player_throw(true, 0);
			else player_throw(true, 180);
		} else {
			if (obj_player.y > y) player_throw(true, 270);
			else player_throw(true, 90);
		}
	}
} else if (item != noone && !item.thrown) {
	if !audio_is_playing(snd_deflector) audio_play_sound(snd_deflector, 10, false);
	item.thrown = true;
	item.deflected = true;
		
	if (horizontal) {
		if (item.x > x) item.angle = 0;
		else item.angle = 180;	
	} else {
		if (item.y > y) item.angle = 270;	
		else item.angle = 90;	
		
	}
}
