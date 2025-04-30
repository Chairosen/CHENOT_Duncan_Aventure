if (global.soulCounter >= soulCount)
{
	if (roomToGo != noone)
	{
		show_debug_message("On y va")
		global.nextRoom = roomToGo;
		global.atk = false;
		room_goto(roomToGo);
	}
	else 
	{
		O_Chat_Manager.printDoor = true;
		show_debug_message("c non")
	}
}
else 
{
	O_Chat_Manager.missingSouls = soulCount;
	O_Chat_Manager.printSoul = true;
	show_debug_message("je t'emmmerde")
}