// Inherit the parent event
event_inherited();

if (O_Player.weapon == "Music")
{
	global.nbApeasement += 1;
	O_Boss_Manager.bossDmg -=0.5
	HP -= 10
}