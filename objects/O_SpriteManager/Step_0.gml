if (O_Player.isAtk == false)
{
	if (O_Player.sprite_index == S_Player_Walk_Up)
	{
		O_Player.sprite_index = S_Player_Idle_Up;
	}
	if (O_Player.sprite_index == S_Player_Walk_Down)
	{
		O_Player.sprite_index = S_Player_Idle_Down;
	}
	if (O_Player.sprite_index == S_Player_Walk_Right)
	{
		O_Player.sprite_index = S_Player_Idle_Right;
		O_Player.image_xscale = 1;
		if (image_xscale == -1)
		{
			O_Player.sprite_index = S_Player_Idle_Right;
			O_Player.image_xscale = -1;
		}
	}
}

if (O_Player.dirX == 1){
	O_Player.sprite_index = S_Player_Walk_Right;
	O_Player.image_xscale = 1;
}
if (O_Player.dirX == -1){
	O_Player.sprite_index = S_Player_Walk_Right;
	O_Player.image_xscale = -1;
}
if (O_Player.dirY == 1){
	O_Player.sprite_index = S_Player_Walk_Down;
}
if (O_Player.dirY == -1){
	O_Player.sprite_index = S_Player_Walk_Up;
}
