//remise a zero de l'affichage du menu inventaire et relancement du jeu
instance_destroy(O_Case);
instance_destroy(O_Selector);
instance_activate_all();
ds_list_clear(O_Inventory_Manager.caseList);
instance_destroy();