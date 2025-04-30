var existSelector = instance_exists(O_Selector);
if(!existSelector)
{
	for(var i = 0; i < global.playerLife*2; i++)
	{
		var j = i;
		heartY = 8 + 32 * int64(i div 12);
		j -= 12 * int64(i div 12);
		if (i%2 == 0)
		{
			draw_sprite(S_Heart, 0, (view_wport[0]*1.85/3) + j*16, heartY);
		}
		else
		{
			draw_sprite_ext(S_Heart, 0, (view_wport[0]*1.85/3) + j*16, heartY,-1,1,0,c_white,1);
		}
	}
}