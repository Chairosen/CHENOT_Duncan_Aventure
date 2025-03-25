if (O_Player.dirY = -1 || O_Player.sprite_index == S_Player_Idle_Up)
{
	x = O_Player.x + 32;
	image_angle = -60;
}
if (O_Player.dirY = 1 || O_Player.sprite_index == S_Player_Idle_Down)
{
	x = O_Player.x + 32;
	y = O_Player.y + 64
	image_angle = 120;
}
if (O_Player.dirX = 1 || O_Player.sprite_index == S_Player_Idle_Right)
{
	x = O_Player.x + 64;
	y = O_Player.y + 32;
	image_angle = -120;
}
if (O_Player.dirX = -1 || O_Player.sprite_index == S_Player_Idle_Left)
{
	x = O_Player.x;
	y = O_Player.y + 32;
	image_angle = 60;
}