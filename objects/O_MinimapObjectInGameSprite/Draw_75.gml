if (global.showMap){
	selfY = 32 + 30*y/O_Minimap_Manager.heightProportion;
	selfX = 32 + 30*x/O_Minimap_Manager.widthProportion;
	if (window_get_fullscreen()){
		selfX *= 2/3
		selfY *= 2/3}
	draw_sprite_ext(minimapSprite,0,selfX,selfY,image_xscale,image_yscale,0,c_white,1);
	//draw_sprite(minimapSprite,0,40*x/O_Minimap_Manager.widthProportion,40*y/O_Minimap_Manager.heightProportion)
}