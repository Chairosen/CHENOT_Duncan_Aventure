if (global.showMap){
	draw_set_color(c_gray);
	heightProportion = room_height * 100 / camera_get_view_height(view_camera[0])
	widthProportion = room_width * 100 / camera_get_view_width(view_camera[0])
	var height = (40 * room_height) / heightProportion;
	var width = (40 * room_width) / widthProportion;
	draw_rectangle(32,32,width,height,0);
}
else if (alarm[0] > 0)
{
	draw_set_colour(c_red);
	draw_text_transformed(/*camera_get_view_width(view_camera[0])/3*/450,190,"Vous ne pouvez pas utiliser la carte ici.",2,2,0);
}