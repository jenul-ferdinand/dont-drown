/// @desc wep_crafting_cost_switch();

switch (selected)
{
	// Stone Axe
	case 0:
	{	
		if (global.wood_count >= 4 && global.stone_count >= 3)
		{
			// Craft
			obj_player.weapon = obj_stone_axe;
			scr_pickup(1);
			show_debug_message("Stone Axe");
				
			// Remove Amount
			// Wood
			global.wood_count -= 4;
			// Stone
			global.stone_count -= 3;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
		
	// Stone Pick
	case 1:
	{	
		if (global.wood_count >= 3 && global.stone_count >= 4)
		{
			// Craft
			obj_player.weapon = obj_stone_pick;
			scr_pickup(2);
			show_debug_message("Stone Pick");
				
			// Remove Amount
			// Wood
			global.wood_count -= 3; 
			// Stone
			global.stone_count -= 4;
				
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
	
	// Steel Axe
	case 2:
	{
		if (global.wood_count >= 4)
		{
			// Craft
			obj_player.weapon = obj_steel_axe;
			scr_pickup(22);
			
			// Remove Wood
			global.wood_count -= 4;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
	
	// Steel Pick
	case 3:
	{
		if (global.wood_count >= 5)
		{
			// Craft
			obj_player.weapon = obj_steel_axe;
			scr_pickup(21);
			
			// Remove Wood
			global.wood_count -= 5;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
}

