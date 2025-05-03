draw_set_font(Font1)
//Affiche une phrase à l'obtention d'un item pendant 3s
if (alarm[0] > 0)
{
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*3/4,"Obtenu : "+ itemName + " x1.");
}
//Affiche une phrase lorsque la porte qui souhaite être ouverte ne mène nulle part
if (alarm[1] > 0)
{
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*3/4,"Cette porte ne semble mener nulle part...");
}
//Affiche une phrase quand le joueur ne possède pas assez d'âmes pour ouvrir la porte souhaitée pendant 3s
if (alarm[2] > 0)
{
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*3/4,"Il vous faut "+ string(missingSouls) +" âmes pour ouvrir cette porte.");
}
//Affiche une phrase quand le joueur tente d'apaiser une âme à executer
if (alarm[3] > 0)
{
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*2.5/4,"Cette âme ne semble pas entendre la douce mélodie...");
}
//Affiche une phrase quand le joueur réussi à apaiser une âme
if (alarm[4] > 0)
{
	draw_set_halign(fa_left);
	draw_text(32,camera_get_view_height(view_camera[0])*2.5/4,"Elle ne semble pas insensible à cette mélodie !");
}