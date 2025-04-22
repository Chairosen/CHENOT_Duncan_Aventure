var case1 = HPBoss <= 40 && HPBoss > 32;
var case2 = HPBoss <= 30 && HPBoss > 20
var case3 = HPBoss <= 20 && HPBoss > 10
var case4 = HPBoss <= 10 && HPBoss > 0
var case5 = HPBoss <= 0

show_debug_message(HPBoss);
switch (true) 
{
	case (case1) : 
		if (instance_exists(O_Boss))
		{
			instance_create_layer(O_Boss.x,O_Boss.y,"Enemy",O_Boss_Stunt);
			instance_destroy(O_Boss);
			O_Boss_Stunt.HP = HPBoss;
			show_debug_message("stun");
		}
		break;
	case (case2) : 
		if (instance_exists(O_Boss_Stunt))
		{
			instance_create_layer(O_Boss_Stunt.x,O_Boss_Stunt.y,"Enemy",O_Boss);
			instance_destroy(O_Boss_Stunt);
			O_Boss.HP = HPBoss;
			show_debug_message("unstun");
		}
		break;
	case (case3) : 
		if (instance_exists(O_Boss))
		{
			instance_create_layer(O_Boss.x,O_Boss.y,"Enemy",O_Boss_Stunt);
			instance_destroy(O_Boss);
			O_Boss_Stunt.HP = HPBoss;
			show_debug_message("stun");
		}
		break;
	case (case4) : 
		if (instance_exists(O_Boss_Stunt))
		{
			instance_create_layer(O_Boss_Stunt.x,O_Boss_Stunt.y,"Enemy",O_Boss);
			instance_destroy(O_Boss_Stunt);
			O_Boss.HP = HPBoss;
			show_debug_message("unstun");
		}
		break;
	case (case5) : 
		global.BossDefeated = true;
		instance_destroy(O_Boss);
		room_goto(End);
		break;
}

//if (HPBoss <= 0)