if (!(instance_exists(obj_player))) exit;
if (global.show_inv) exit;
if (crafting_ui.show_gui) exit;

if (keyboard_check_pressed(ord("Q"))) {show_gui = !show_gui;}
if (!show_gui) exit;
if (mouse_wheel_down() or mouse_wheel_up()) {audio_play_sound(snd_click_sound, 99, 0);}

// Selecting
if (mouse_wheel_down()) {selected++; show_debug_message(selected);}
if (mouse_wheel_up()) {selected--; show_debug_message(selected);}
// Cap the lowest and highest
if (selected <= 0) {selected = 0}
if (selected >= selection_max) {selected = selection_max}

// Amounts Updated
amount[2] = global.wood_count;
amount[3] = global.stone_count;

if (keyboard_check_pressed(ord("E")))
{
	switch (selected)
	{
		// Stone Axe
		case 0:
		{	
			// Check if the stone axe is in the inventory
			var item_exists = scr_itemcheck(1);
			if (item_exists)
			{
				obj_player.weapon = obj_stone_axe;
			}
			else
			{
				obj_player.weapon = -1;	
			}
			
			// Drop the stone axe
			scr_drop(1);
			show_debug_message("Dropped Stone Axe");
		} 
		break;
		
		// Stone Pick
		case 1:
		{
			// Check if the stone pick is in the inventory
			var item_exists = scr_itemcheck(2);
			if (item_exists)
			{
				obj_player.weapon = obj_stone_pick;
			}
			else
			{
				obj_player.weapon = -1;
			}
			
			// Drop the stone pick
			scr_drop(2);
			show_debug_message("Dropped Stone Pick");
		} 
		break;
		
		// Wood
		case 2:
		{
			// Drop the wood
			scr_drop(3);
			global.wood_count--;
			show_debug_message("Dropped Wood");
		} 
		break;
		
		// Stone
		case 3:
		{
			// Drop the stone
			scr_drop(4);
			global.stone_count--;
			show_debug_message("Dropped Stone");
		} 
		break;
	}
}