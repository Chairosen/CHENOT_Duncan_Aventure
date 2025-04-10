//si un item est assigné à la case, verifie que la quantité est suffisante pour être affichée
if(IDItem != -4)
{
	if (global.itemList[IDItem-1][O_Inventory_Manager.itemQte] == 0)
	{
		IDItem = -4
	}
}