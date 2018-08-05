var item = global.inventory[slot];
var lclick = mouse_check_button_pressed(mb_left);
var rclick = mouse_check_button_pressed(mb_right);

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

if (!global.show_inv)
{
	// If In Slot Area
	if (abs(mousex - x) < 16) and (abs(mousey - y) < 16)
	{
		// Draw The White Overlay
		draw_set_colour(c_white);
		draw_set_alpha(0.33);
		draw_rectangle(x-16, y-16, x+15, y+14, 0);
		draw_set_alpha(1);
		draw_set_colour(-1);
	
		// Clicking
		if (lclick)
		{
			if (item != -1)
			{
				scr_drop_slot(slot);
			}
			if (global.mouse_item != -1)
			{
				scr_pickup_slot(global.mouse_item, slot);
			}
			global.mouse_item = item;
		}
		
		if (rclick)
		{
			if (item != -1)
			{	
				wep_inventory_item_switch();
			}
		}
	}
	
	// Draw The Item Sprite
	if (item != -1)
	{
		draw_sprite(spr_items, item, x, y);
	}
}

// Draw The Item In Game
wep_inventory_selected_icon();






		













