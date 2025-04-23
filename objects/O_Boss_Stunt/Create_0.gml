// Inherit the parent event
event_inherited();

HP = O_Boss_Manager.HPBoss;

if (O_Player.y < y + 128 && O_Player.y > y)
{
	O_Player.x += (x-O_Player.x)*5
}
if (O_Player.x < x + 128 && O_Player.x > x)
{
	O_Player.y += (y-O_Player.y)*5
}