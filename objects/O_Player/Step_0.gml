var up = keyboard_check(vk_up);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var down = keyboard_check(vk_down);
var atk = mouse_check_button_pressed(mb_left);
var coll = instance_place(x+dirX*64,y+dirY*64,[noone]);
var esc = keyboard_check_pressed(vk_escape);

//Check collision
if ((coll<=0))
{
	if (isMoving == false)
	{
		targetX = dirX*64;
		targetY = dirY*64;
		isMoving = true;
		alarm_set(0,nFrameToMove);
	}
}

if (isMoving == true){
	x += targetX/nFrameToMove;
	y += targetY/nFrameToMove;
}

if (!up && !down && !right && !left){
	dirX = 0;
	dirY = 0;
}
