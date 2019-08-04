audio_listener_position(x, y, 0);

if (!freeze) player_movement();
set_defaults();
switch (current_item) {
    case item_type.boots:
		player_boots();
        break;
	case item_type.sword:
		player_sword();
		break;
	case item_type.hammer:
		player_hammer();
		break;
	case item_type.gun:
		player_gun();
		break;
	case item_type.none:
		break;
}

if (place_meeting(x, y, obj_enemy)) 
{
	load("checkpoint.ini");
	file_delete("undo.ini");
}