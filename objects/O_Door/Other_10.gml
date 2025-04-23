if (global.soulCounter >= soulCount)
{
	if (roomToGo != noone)
	{
		global.nextRoom = roomToGo;
		room_goto(roomToGo);
	}
	else 
	{
		O_Chat_Manager.printDoor = true;
	}
}
else 
{
	O_Chat_Manager.missingSouls = soulCount;
	O_Chat_Manager.printSoul = true;
}