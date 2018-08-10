if (!(instance_exists(obj_player))) exit;
var item = global.inventory[slot];
var lclick = mouse_check_button_pressed(mb_left);
var rclick = mouse_check_button_pressed(mb_right);
var equipped = false;

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

if (global.show_inv == true)
{
	// Draw The Back Borders
	draw_sprite(spr_border, 0, x + 2, y + 2);
	
	// If In Slot Area
	if (abs(mousex - x) < 16) and (abs(mousey - y) < 16)
	{
		// Draw The Highlight
		draw_sprite(spr_border_highlight, 0, x, y);
	
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
		
		// Equipping
		if (rclick)
		{
			if (item != -1)
			{	
				wep_inventory_item_switch();
				equipped = true;
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






		













