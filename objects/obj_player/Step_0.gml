player_movement();
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