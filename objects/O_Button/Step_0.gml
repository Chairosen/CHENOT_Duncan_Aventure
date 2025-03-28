var mouseOver = collision_point(mouse_x,mouse_y,self,0,0);

if (mouseOver)
{
	show_debug_message("mouse over")
	event_user(0);
}
else
{
	event_user(1);
}