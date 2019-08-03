/// @description Insert description here
// You can write your code in this editor
if (obj_player.current_item == item_type.none && can_pickup && !thrown) {
	obj_player.current_item = type;
	instance_destroy();
}	
	