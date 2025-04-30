room_set_persistent(R_Settings,true);
room_set_persistent(R_Test,true);
room_set_persistent(R_Donjon,true);
room_set_persistent(R_Menu,true);

global.actualRoom = R_Test;
room_goto(R_Menu);