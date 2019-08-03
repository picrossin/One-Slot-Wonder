/// @description Insert description here
// You can write your code in this editor
if (!saved && place_meeting(x, y, obj_player)) 
{
	save("checkpoint.ini");
	saved = true;
}
