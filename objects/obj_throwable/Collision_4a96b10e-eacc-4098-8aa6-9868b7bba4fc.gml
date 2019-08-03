/// @description Insert description here
// You can write your code in this editor
if (obj_player.current_item == item_type.none && !obj_player.holding) {
	obj_player.current_item = type;
	instance_destroy();
}