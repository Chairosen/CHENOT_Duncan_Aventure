isAtk = true;
alarm_set(1,30);
instance_create_layer(x+32,y,"Player",O_Weapon)
/*
switch (sprite_index) {
	case "S_Player_Walk_Up":
		sprite_index = S_Player_Attack_Up;
		break;
	case "S_Player_Walk_Down":
		sprite_index = S_Player_Attack_Down;
		break;
	case "S_Player_Walk_Right":
		sprite_index = S_Player_Attack_Right;
		image_xscale = 1;
		break;
	case "S_Player_Walk_Left":
		sprite_index = S_Player_Attack_Right;
		image_xscale = -1;
		break;
}