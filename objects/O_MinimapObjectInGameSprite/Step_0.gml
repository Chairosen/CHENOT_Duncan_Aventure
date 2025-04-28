if (parentInGame != -4){
	x = parentInGame.x;
	y = parentInGame.y;
	if (parentInGame.image_xscale > 1)
	{
	image_xscale = parentInGame.image_xscale/2;
	}
	if (parentInGame.image_yscale > 1)
	{
	image_yscale = parentInGame.image_yscale/2;
	}
}
else
{
	instance_destroy(self);
}