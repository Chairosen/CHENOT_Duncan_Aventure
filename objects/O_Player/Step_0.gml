var up = keyboard_check(vk_up);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var down = keyboard_check(vk_down);
var atk = mouse_check_button_pressed(mb_left);
var coll = instance_place(x+dirX*64,y+dirY*64,O_Collision);
var esc = keyboard_check_pressed(vk_escape);

//verification and getting of the connected controller
var gamepadCount = gamepad_get_device_count();
var connectedGamepad = 0;
for(var i = 0; i < gamepadCount; ++i) {
	if(gamepad_is_connected(i)) 
	{ 
		++connectedGamepad; 
		var connectedSlot = i;
	}
}
//Controls with controller
if (connectedGamepad > 0)
{
	//movements
	gamepad_set_axis_deadzone(0,0.8);
	/* joystick test 
	//Xbox controller
	var xAxisH = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axislh) : 0;
	var xAxisV = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axislv) : 0;
	//PS controller
	var DSAxisH = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axis_orientation_x) : 4;
	var DSAxisV = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axis_orientation_y) : 4;
	
	dirX = sign(DSAxisH);
	dirY = sign(DSAxisV);
	*/
	var padUp = gamepad_button_check(4,gp_padu);
	var padDown = gamepad_button_check(4,gp_padd);
	var padRight = gamepad_button_check(4,gp_padr);
	var padLeft = gamepad_button_check(4,gp_padl);
	
	dirY = padDown-padUp;
	dirX = padRight-padLeft;
	
	atk = gamepad_button_check(4,gp_shoulderrb);
	esc = gamepad_button_check_pressed(4,gp_start);
	var triangle = gamepad_button_check_pressed(4,gp_face4);
	
	if (triangle) {global.showMap = !global.showMap}
	if (esc) {room_goto(R_Pause)}
}
else
{
	if (!up && !down && !right && !left){
	dirX = 0;
	dirY = 0;
	}
}

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


if (atk)
{
	if (weapon == "Kill")
	{
		if (!isAtk)
	{
		isAtk = true;
		alarm_set(1,10);
		instance_create_layer(x+32,y,"Player",O_Weapon)
	}
	}
	if (weapon == "Music")
	{
		instance_create_layer(x,y,"Player",O_Instrument)
		alarm[1] = 10;
		for (var i = 0;i < 5;i++)
		{
			instance_create_layer(x,y,"Player",O_MusicNotes);
		}
	}
}
