var existSelector = instance_exists(O_Selector);
if(!existSelector)
{
	for(var i = 0; i < global.playerLife*2; i++)
	{
		var j = i;
		heartY = 64 * int64(i div 12);
		j -= 12 * int64(i div 12);
		if (i%2 == 0)
		{
			draw_sprite(S_Heart, 0, (camera_get_view_width(view_camera[0])) + j*32, heartY);
		}
		else
		{
			draw_sprite_ext(S_Heart, 0, (camera_get_view_width(view_camera[0])) + j*32, heartY,-1,1,0,c_white,1);
		}
	}
}