//Control inputs
var forward = keyboard_check(ord("Z"));
var backward = keyboard_check(ord("S"));
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("Q"));
var atk = mouse_check_button_pressed(mb_left);
var coll = instance_place(x+dirX*32,y+dirY*32,O_Collision);

//Controls
if (forward){
	dirX = 0;
	dirY = -1;
}
if (backward){
	dirX = 0;
	dirY = 1;
}
if (right){
	dirX = 1;
	dirY = 0;
}
if (left){
	dirX = -1;
	dirY = 0;
}
//Check collision
if (!coll){
	if (!isMoving){
		targetX = dirX*32;
		targetY = dirY*32;
		isMoving = true;
		alarm[0] = nFrameToMove;
	}
}

if (isMoving){
	x = targetX/nFrameToMove;
	y = targetY/nFrameToMove;
}

if (!forward && !backward && !right && !left){
	dirX = 0;
	dirY = 0;
}
//Attack
if (atk){
	isAtk = true
	alarm[0] = 30;
}
