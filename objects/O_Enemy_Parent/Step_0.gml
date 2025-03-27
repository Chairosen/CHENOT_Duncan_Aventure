var p_direction = point_direction(x,y,O_Player.x,O_Player.y);
var collid = instance_place(x+dirX*64, y+dirY*64,O_Collision);
var dist = point_distance(x,y,O_Player.x,O_Player.y);
var rightAtkRange = collision_rectangle(x+64,y,x+xRange*64,y+64,O_Player,0,0);
var leftAtkRange = collision_rectangle(x,y,x-xRange*64,y+64,O_Player,0,0);
var upAtkRange = collision_rectangle(x,y,x+64,y-yRange*64,O_Player,0,0);
var downAtkRange = collision_rectangle(x,y+64,x+64,y+64+yRange*64,O_Player,0,0);
if (HP <= 0)
{
	instance_destroy();
}

if (dist <384 && rightAtkRange <= 0 && leftAtkRange <= 0 && upAtkRange <= 0 && downAtkRange <= 0)
{
	if (isMoving == false)
	{
	    if ((p_direction >= 45 && p_direction < 135))
		{
			if (dist > 64)
			{
				dirY = -1;
			}
	    }
	    else if ((p_direction >= 225 && p_direction < 315))
		{
			if (dist > 64)
			{
				dirY = 1;
			}
	    }
	    else if ((p_direction >= 135 && p_direction < 225))
		{
			if (dist > 64)
			{
				dirX = -1;
			}
	    }
	    else if ((p_direction >= 315 && p_direction < 360 || p_direction >= 0 && p_direction < 45))
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
}

if (rightAtkRange > 0 && leftAtkRange > 0 && upAtkRange > 0 && downAtkRange > 0)
{
	if (!atk)
	{
		script_execute(sc_ReduceLife,dmg)
	}
}