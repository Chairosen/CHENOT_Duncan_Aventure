var interactColl = collision_point(x,y,O_Interact,true,0);

if (interactColl)
{
	if (O_Player.isAtk)
	{
		event_user(0);
	}
}
//death
if (HP <= 0)
{
	instance_destroy();
}
//
if (HP < 5)
{
	if (hasInvoqued == false)
	{
		O_Player.x -= (x-O_Player.x)*3;
		O_Player.y -= (y-O_Player.y)*3;
		hasInvoqued = true;
		sprite_index = S_Child_Fantom_Hurt;
		alarm[2] = 2;
	}
}