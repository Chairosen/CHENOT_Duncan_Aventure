if (O_Player.dirX == 1){
	O_Player.sprite_index = S_Player_Walk_Right;
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
else{
	if (!O_Player.isAtk){
		switch (O_Player.sprite_index) {
			case "up":
				O_Player.sprite_index = S_Player_Idle_Up;
				break;
			case "down":
				O_Player.sprite_index = S_Player_Idle_Down;
				break;
			case "right":
				O_Player.sprite_index = S_Player_Idle_Right;
				//O_Player.image_xscale = 1;
				break;
			case "left":
				O_Player.sprite_index = S_Player_Idle_Right;
				O_Player.image_xscale = -1;
				break;
		}
	}
}