if (waitTime <= 0)
{
	image_xscale += animation;
	image_yscale += animation;

	if (image_xscale >=maxScale)
	{
		animation = -animation;
	}
	if (image_xscale <= minScale)
	{
		animation = -animation;
	}
}
if ((image_xscale == maxScale or image_xscale == minScale) and waitTime <= 0)
{
	waitTime = 3;
}
waitTime -= 1
alarm[0] = 10