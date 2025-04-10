var select = keyboard_check_pressed(vk_enter);
//si le joueur selectionne une case, réduit la quantité de 1 et applique les effets de l'objet
if (select)
{
	if (IDItem != -4)
	{
		if (global.itemList[IDItem-1][O_Inventory_Manager.itemQte] > 0)
		{
			global.itemList[IDItem-1][O_Inventory_Manager.itemQte] -= 1;
			global.playerLife += global.itemList[IDItem-1][O_Inventory_Manager.itemHeal];
			global.playerDmg += global.itemList[IDItem-1][O_Inventory_Manager.itemDmgBuff];
			O_Life_Manager.isBuffed = true; //lorsque le jeu reprendra, le manager de vie lancera une alarme pour remettre les dégats du joueur par defaut
		}
	}
}