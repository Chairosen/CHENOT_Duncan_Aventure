var p_direction = point_direction(x,y,O_Player.x,O_Player.y);
var collid = instance_place(x+dirX*64, y+dirY*64,O_Collision);
var dist = point_distance(x,y,O_Player.x,O_Player.y);

if (HP <= 0)
{
	instance_destroy();
}

if (isMoving == false)
{
    if ((p_direction >= 45 and p_direction < 135))
	{
		if (dist > 64)
		{
			dirY = -1;
		}
    }
    else if ((p_direction >= 225 and p_direction < 315))
	{
		if (dist > 64)
		{
			dirY = 1;
		}
    }
    else if ((p_direction >= 135 and p_direction < 225))
	{
		if (dist > 64)
		{
			dirX = -1;
		}
    }
    else if ((p_direction >= 315 and p_direction < 360 or p_direction >= 0 and p_direction < 45))
	{
		if (dist > 64)
		{
			dirX = 1;
		}
    }
}
if ((collid <= 0))
{
    if (isMoving == false)
	{
        targetX = dirX*64;
        targetY = dirY*64;
        isMoving = true;
        alarm_set(1,move);
    }
}
if (isMoving == true)
{
    x += targetX/move;
    y += targetY/move;
}