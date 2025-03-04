//Control inputs
var forward = keyboard_check(ord("Z"));
var backward = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("Q"));
var atk = mouse_check_button_pressed(mb_left);


//Controls
if (forward){
	y -= Speed;
}
if (backward){
	y += Speed;
}
if (right){
	x += Speed;
}
if (left){
	
	x -= Speed;
}

/*
if (atk){
	sprite_index = S_Player_atk;
	alarm[0] = 30;
}
if (!forward && !backward && !right && ! left){
	switch (dir) {
		case 1:
			sprite_index = S_Player_Idle_Up;
			break;
		case 2:
			sprite_index = S_Player_Idle_Down;
			break;
		case 3:
			sprite_index = S_Player_Idle_Right;
			break;
		case 4:
			sprite_index = S_Player_Idle_Left;
			break;
	}
}
*//**/