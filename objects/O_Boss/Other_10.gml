// Inherit the parent event
event_inherited();
//Si le joueur tente d'apaiser le boss, affiche une phrase d'echec
if (O_Player.weapon == "Music")
{
	O_Chat_Manager.printInsensitivity = true;
}