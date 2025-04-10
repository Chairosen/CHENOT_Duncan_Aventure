//Affiche une phrase à l'obtention d'un item pendant 3s
if (alarm[0] > 0)
{
	//show_debug_message("lol");
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*3/4,"Obtenu : "+ itemName + " x1.");
}