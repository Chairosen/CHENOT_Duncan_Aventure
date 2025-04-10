//assignation a chaque case de l'inventaire un objet par son id si possédé par le joueur
if (!ds_list_empty(caseList))
{
	for (var i = 0; i < array_length(global.itemList); i ++)
	{
		if (global.itemList[i][itemQte] > 0)
		{
			ds_list_find_value(caseList,i).IDItem = global.itemList[i][itemID];
		}
	}
}