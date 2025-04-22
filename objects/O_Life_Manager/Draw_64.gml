var existSelector = instance_exists(O_Selector);
if(!existSelector)
{
for(var i = 0; i < global.playerLife*2; i++)
{
	if (i%2 == 0)
	{
		draw_sprite(S_Heart, 0, 32 + i*32, 0);
	}
	else
	{
		draw_sprite_ext(S_Heart, 0, 32 + i*32, 0,-1,1,0,c_white,1);
	}
}
}