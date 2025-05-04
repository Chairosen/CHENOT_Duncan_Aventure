subimage += 1/30;
for (var i = 0 ; i <= array_length(spriteListe)-4; i ++)
{
	draw_sprite(spriteListe[i],floor(subimage),x,y+i * 64);
}
for (var i = 0 ; i <= 2; i ++)
{
	draw_sprite(spriteListe[7+i],floor(subimage),x+500,y+i * 64);
}