// Inherit the parent event
event_inherited();

if (O_Player.weapon == "Music")
{
	O_Chat_Manager.printSensitivity = true;
	global.nbApeasement += 1;
	O_Boss_Manager.bossDmg -=0.5
	HP -= 10
}