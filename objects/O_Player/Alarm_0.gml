switch (dir) {
	case "up":
		sprite_index = S_Player_Idle_Up;
		break;
	case "down":
		sprite_index = S_Player_Idle_Down;
		break;
	case "right":
		sprite_index = S_Player_Idle_Right;
		image_xscale = 1;
		break;
	case "left":
		sprite_index = S_Player_Idle_Right;
		image_xscale = -1;
		break;
}
isAtk = false;