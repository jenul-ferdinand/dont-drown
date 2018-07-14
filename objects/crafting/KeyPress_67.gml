if (global.wood_count >= 1 && global.stone_count >= 6)
	{
	obj_player.weapon = obj_starter_pick;
	global.wood_count -= 1;
	global.stone_count -= 6;
	}