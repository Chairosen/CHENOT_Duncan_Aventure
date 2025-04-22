var interactColl = collision_rectangle(x,y,x+sprite_get_width(self.sprite_index),y+sprite_get_height(self.sprite_index),O_Interact,0,0)

if (interactColl)
{
	if (global.atk)
	{
		event_user(0);
	}
}
O_Boss_Manager.HPBoss = HP