/// @desc wep_crafting_cost_switch();

switch (selected)
{
	// Stone Axe
	case 0:
	{	
		if (global.wood_count >= _stone_axe_wood && global.stone_count >= _stone_axe_stone)
		{
			// Craft
			obj_player.weapon = obj_stone_axe;
			scr_pickup(1);
			show_debug_message("Stone Axe");
				
			// Remove Amount
			// Wood
			global.wood_count -= _stone_axe_wood;
			// Stone
			global.stone_count -= _stone_axe_stone;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
		
	// Stone Pick
	case 1:
	{	
		if (global.wood_count >= _stone_pick_wood && global.stone_count >= _stone_pick_stone)
		{
			// Craft
			obj_player.weapon = obj_stone_pick;
			scr_pickup(2);
			show_debug_message("Stone Pick");
				
			// Remove Amount
			// Wood
			global.wood_count -= _stone_pick_wood; 
			// Stone
			global.stone_count -= _stone_pick_stone;
				
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
	
	// Steel Axe
	case 2:
	{
		if (global.wood_count >= _steel_axe_wood && global.iron_count >= _steel_axe_iron)
		{
			// Craft
			obj_player.weapon = obj_steel_axe;
			scr_pickup(9);
			
			// Remove Wood
			global.wood_count -= _steel_axe_wood;
			global.iron_count -= _steel_axe_iron;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
	
	// Steel Pick
	case 3:
	{
		if (global.wood_count >= _steel_pick_wood && global.stone_count >= _steel_pick_iron)
		{
			// Craft
			obj_player.weapon = obj_steel_pick;
			scr_pickup(10);
			
			// Remove Wood
			global.wood_count -= _steel_pick_wood;
			global.iron_count -= _steel_pick_iron;
			
			// Play Sound Effect
			audio_play_sound(snd_hammering_1, 85, 0);
		}
	} break;
}

