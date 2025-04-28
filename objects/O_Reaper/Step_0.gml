// Inherit the parent event
event_inherited();
show_debug_message(move)
if (move)
{
	y += velocity / 60;
	if (alarm[0]<=0)
	{
		alarm[0]=60;
	}
}