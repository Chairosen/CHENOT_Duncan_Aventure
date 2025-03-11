//Control inputs
var forward = keyboard_check(ord("Z"));
var backward = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("Q"));
var atk = mouse_check_button_pressed(mb_left);

//Controls
if (forward){
	dir = "up"
	sprite_index = S_Player_Walk_Up;
	y -= Speed;
}
if (backward){
	dir = "down"
	sprite_index = S_Player_Walk_Down;
	y += Speed;
}
if (right){
	dir = "right"
	sprite_index = S_Player_Walk_Right;
	image_xscale = 1;
	x += Speed;
}
if (left){
	dir = "left"
	sprite_index = S_Player_Walk_Right;
	image_xscale = -1;
	x -= Speed;
}

//Attack
if (atk){
	isAtk = true
	switch (dir) {
		case "up":
			sprite_index = S_Player_Attack_Up;
			break;
		case "down":
			sprite_index = S_Player_Attack_Down;
			break;
		case "right":
			sprite_index = S_Player_Attack_Right;
			image_xscale = 1;
			break;
		case "left":
			sprite_index = S_Player_Attack_Right;
			image_xscale = -1;
			break;
	}
	alarm[0] = 30;
}

//Idle animation
if (!forward && !backward && !right && ! left && !isAtk){
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
}
