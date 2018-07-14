if (!instance_exists(obj_stone_pick_button))
	{
		instance_create_depth(obj_player.x-300, obj_player.y-25, -10, obj_stone_pick_button)
	}
	
if (!instance_exists(obj_stone_axe_button))
	{
		instance_create_depth(obj_player.x-300, obj_player.y-75, -10, obj_stone_axe_button)
	}

if (obj_player.inv_key)
	{
	//destroy the axe
	with (obj_stone_axe_button)
		{
		instance_destroy();
		}
	//destroy the pick
	with (obj_stone_pick_button)
		{
		instance_destroy();
		}
	//destroy crafting
	instance_destroy();
	}
	

