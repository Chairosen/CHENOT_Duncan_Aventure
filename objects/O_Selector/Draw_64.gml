var heartH = (window_get_height()/3) - 192;
var heartW = 32;

for (var i = 0; i < global.playerLife*2; i ++)
{
	if (i%2 == 0)
	{
		draw_sprite_ext(S_Heart, 0, heartW + i*64, heartH,2,2,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(S_Heart, 0, heartW + i*64, heartH,-2,2,0,c_white,1);
	}
	//draw_sprite_ext(S_Heart,0,heartW+i*64*1.5,heartH-64*3,3,3,0,c_white,1);
}
//affichage sprite ames
draw_sprite_ext(S_Soul,0,heartW,heartH + 128,3,3,0,c_white,1);
draw_text_transformed(heartW+32*3,heartH + 128,string(global.soulCounter),3,3,0);