if (HP <= 0)
{
	instance_destroy();
}

if (HP < 5)
{
	if (hasInvoqued == false)
	{
		hasInvoqued = true;
		alarm[2] = 2;
	}
}