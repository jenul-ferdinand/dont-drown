if (mouse_wheel_down() or mouse_wheel_up()) {audio_play_sound(snd_blip_select_1, 99, 0);}
if (keyboard_check_pressed(ord("Q"))) {show_gui = !show_gui;}

// Selecting
if (mouse_wheel_down()) {selected++}
if (mouse_wheel_up()) {selected--}
// Cap the lowest and highest
if (selected < 0) {selected = 0}
if (selected > selection_max) {selected = selection_max}

if (keyboard_check_pressed(ord("E")))
{
	switch (selected)
	{
		// Stone Axe
		case 0:
		{
			obj_player.weapon = obj_stone_axe;
			scr_pickup(1);
			show_debug_message("Stone Axe");
		} break;
		
		// Stone Pick
		case 1:
		{
			obj_player.weapon = obj_stone_pick;
			scr_pickup(2);
			show_debug_message("Stone Pick");
		} break;
	}
}