switch (O_Player.dirX) {
	case 1 :
		O_Player.sprite_index = S_Player_Walk_Right;
		break;
	case -1:
		O_Player.sprite_index = S_Player_Walk_Left;
		break;	
}
switch (O_Player.dirY) {
	case 1 :
		O_Player.sprite_index = S_Player_Walk_Down;
		break;
	case -1:
		O_Player.sprite_index = S_Player_Walk_Up;
		break;	
}

if ((O_Player.dirX == 0) && (O_Player.dirY == 0))
{
	switch (O_Interact.x-O_Player.x)
	{
		case 64 :
			O_Player.sprite_index = S_Player_Idle_Right;
			break;
		case -64 :
			O_Player.sprite_index = S_Player_Idle_Left;
			break;
	}
	switch (O_Interact.y-O_Player.y)
	{
		case 64 :
			O_Player.sprite_index = S_Player_Idle_Down;
			break;
		case -64 :
			O_Player.sprite_index = S_Player_Idle_Up;
			break;
	}
}