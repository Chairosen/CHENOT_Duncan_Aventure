//initialisation de la liste des cases d'inventaire lorsque créées
caseList = ds_list_create();
//initialisation de variable donnant la colonne correspondante du tableau d'inventaire
itemID = 0;
itemName = 1;
itemQte = 2;
itemSprite = 3;
itemHeal = 4;
itemDmgBuff = 5
//verification de l'existance du tableau d'inventaire et création de ce dernier le cas contraire
if (!variable_global_exists("itemList"))
{
global.itemList = [	[1,"Potion",0,S_Potion,2,0],
					[2,"Potion +",0,S_Potion2,3,0],
					[3,"DMG +",0,S_Spike,0,2]];
}

//array_create()