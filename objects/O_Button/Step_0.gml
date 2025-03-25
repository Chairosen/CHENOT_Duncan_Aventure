var mouseOver = collision_point(mouse_x,mouse_y,self,0,0);

if (mouseOver)
{
	show_debug_message("mouse over")
	draw_set_color(buttonSelectColor);
}
else
{
	draw_set_color(c_white);
}