draw_self();
//si la case contient un item, affiche le sprite et sa quantité
if (IDItem !=-4)
{
	draw_sprite(global.itemList[IDItem-1][O_Inventory_Manager.itemSprite],0,x,y);
	draw_text(x,y,string(global.itemList[IDItem-1][O_Inventory_Manager.itemQte]))
}