var width = window_get_width()/2;
var height = window_get_height();

for (var i = 0; i < 2;i++)
{
	draw_sprite(S_BarCase,0,width+i*64,height);
	draw_sprite(weapons[i],0,width+i*64-6,height-6);
}
switch (O_Player.weapon)
{
	case "Kill":
		draw_sprite(S_Select,0,width-64,height-64);
		break;
	case "Music":
		draw_sprite(S_Select,0,width,height-64);
		break;
}