if (!instance_exists(O_Selector) && isBuffed)
{
	alarm[1] = 450;
	isBuffed = false;
}
if (global.playerLife < 0)
{
	global.playerLife = 0;
}