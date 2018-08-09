// Turn Off Inventory
if (keyboard_check_pressed(vk_tab)) {global.show_inv = !global.show_inv;}

// Close Others
if (global.show_inv == true) 
{
	if (crafting_ui.show_gui == true)
	{
		crafting_ui.show_gui = !crafting_ui.show_gui;
	}
	
	if (inventory_drop_selector.show_gui)
	{
		inventory_drop_selector.show_gui = !inventory_drop_selector.show_gui;	
	}
}
