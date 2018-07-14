if (global.wood_count >= 1 && global.stone_count >= 6)
	{
	//Put Into Quick Slots
	if (ui.slot_1 == noone)
		{
			ui.slot_1 = obj_starter_pick;
		}
	else if (ui.slot_2 == noone)
		{
			ui.slot_2 = obj_starter_pick;
		}
	else if (ui.slot_3 == noone)
		{
			ui.slot_3 = obj_starter_pick;
		}
	else if (ui.slot_4 == noone)
		{
			ui.slot_4 = obj_starter_pick;
		}
	else if (ui.slot_5 == noone)
		{
			ui.slot_5 = obj_starter_pick;
		}
		
	//Remove Values
	global.wood_count -= 1;
	global.stone_count -= 6;
	}
