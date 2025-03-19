if (!other.invincible)
{
	other.HP -= 1;
	other.invincible = true;
	other.alarm[0] = 30;
}