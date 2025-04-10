var heartH = window_get_height()/3;
var heartW = window_get_width()/3;

for (var i = 0; i < global.playerLife; i ++)
{
	draw_sprite_ext(S_Heart,0,heartW+i*64*1.5,heartH-64*3,3,3,0,c_white,1);
}
//affichage sprite ames
draw_sprite_ext(S_Soul,0,heartW,heartH-64,3,3,0,c_white,1);
draw_text_transformed(heartW+32*3,heartH - 32,string(global.soulCounter),3,3,0);