//loot -> gives souls to player and a random item
var ID = random_range(0,3);
global.soulCounter += soulLoot;
global.itemList[ID][O_Inventory_Manager.itemQte] += 1;
O_Loot_Chat_Manager.itemName = global.itemList[ID][O_Inventory_Manager.itemName];
O_Loot_Chat_Manager.printLoot = true;