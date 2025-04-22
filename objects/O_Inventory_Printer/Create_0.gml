//mise en pause du jeu pour l'affichage du menu inventaire
instance_deactivate_all(true);
instance_activate_layer("Managers");
instance_deactivate_object(O_SpriteManager);
instance_deactivate_object(O_ItemBar_Manager);
//creation des cases d'inventaire et du selecteur
for (var i = 0; i<2;i++)
{
	for(var j = 0; j<2;j++)
	{
		instance_create_layer(x+j*64,y+i*64,"Inventory",O_Case);
	}
}
instance_create_layer(x,y,"Selector",O_Selector);