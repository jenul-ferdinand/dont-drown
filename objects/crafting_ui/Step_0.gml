if (!global.show_inv) exit;
if (inventory_drop_selector.show_gui) exit;

if (keyboard_check_pressed(ord("C"))) {show_gui = !show_gui;}
if (!show_gui) exit;
if (mouse_wheel_down() or mouse_wheel_up()) {audio_play_sound(snd_blip_select_1, 99, 0);}

// Selecting
if (mouse_wheel_down()) {selected++}
if (mouse_wheel_up()) {selected--}
// Cap the lowest and highest
if (selected < 0) {selected = 0}
if (selected > selection_max) {selected = selection_max}

var wood = scr_itemcheck(3);
var stone = scr_itemcheck(4);

if (keyboard_check_pressed(ord("E")))
{
	switch (selected)
	{
		// Stone Axe
		case 0:
		{
			if (global.wood_count >= 4 and global.stone_count >= 3)
			{
				obj_player.weapon = obj_stone_axe;
				scr_pickup(1);
				show_debug_message("Stone Axe");
			}
		} break;
		
		// Stone Pick
		case 1:
		{
			if (global.wood_count >= 3 and global.stone_count >= 4)
			{
				obj_player.weapon = obj_stone_pick;
				scr_pickup(2);
				show_debug_message("Stone Pick");
			}
		} break;
	}
}