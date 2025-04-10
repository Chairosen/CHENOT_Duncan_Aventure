//gestion de déplacement du selecteur dans l'inventaire
var up = keyboard_check(vk_up);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var down = keyboard_check(vk_down);
var coll = instance_place(x+dirX*64,y+dirY*64,O_Case);

if ((coll))
{
	if (isMoving == false)
	{
		targetX = dirX*64;
		targetY = dirY*64;
		isMoving = true;
		alarm_set(0,8);
	}
}

if (isMoving == true){
	x += targetX/8;
	y += targetY/8;
}

if (!up && !down && !right && !left){
	dirX = 0;
	dirY = 0;
}