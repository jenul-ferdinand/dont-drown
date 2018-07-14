if (global.wood_count >= 2 && global.stone_count >= 3)
	{
		//Put Into Quick Slots
		if (ui.slot_1 == noone)
			{
				ui.slot_1 = obj_starter_axe;
			}
		else if (ui.slot_2 == noone)
			{
				ui.slot_2 = obj_starter_axe;
			}
		else if (ui.slot_3 == noone)
			{
				ui.slot_3 = obj_starter_axe;
			}
		else if (ui.slot_4 == noone)
			{
				ui.slot_4 = obj_starter_axe;
			}
		else if (ui.slot_5 == noone)
			{
				ui.slot_5 = obj_starter_axe;
			}
	
		global.wood_count -= 2;
		global.stone_count -= 3;
	}
