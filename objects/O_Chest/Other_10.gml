//Ajoute l'item à l'inventaire du joueur
if (!isOpen)
{
	global.itemList[ID-1][O_Inventory_Manager.itemQte] += 1;
	O_Chat_Manager.itemName = global.itemList[ID-1][O_Inventory_Manager.itemName];
	O_Chat_Manager.printLoot = true;
	instance_destroy(self);
}