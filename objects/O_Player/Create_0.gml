if (!variable_global_exists("nextRoom"))
{
	global.nextRoom = Menu;
}
isAtk = false;
image_speed = 0.33;
//Sprite minimap
script_execute(Sc_CreateMinimapObject,self,S_PlayerMM);