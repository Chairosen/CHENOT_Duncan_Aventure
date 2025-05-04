subimage += 1/30;
for (var i = 0 ; i <= array_length(spriteListe)-3; i ++)
{
	draw_sprite(spriteListe[i],floor(subimage),x,y+i * 64);
}
for (var i = 0 ; i <= 1; i ++)
{
	draw_sprite(spriteListe[7+i],floor(subimage),x+500,y+i * 64);
}