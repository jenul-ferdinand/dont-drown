// Turn Off Inventory
if (!(instance_exists(obj_player))) exit;
if (keyboard_check_pressed(vk_tab)) {global.show_inv = !global.show_inv;}

// Close Others
if (global.show_inv == true) 
{
	if (crafting_ui.show_gui == true)
	{
		crafting_ui.show_gui = !crafting_ui.show_gui;
	}
}

if (global.show_inv == true)
{
	camera.mode = cam_mode.follow_object;
}
else 
{
	camera.mode = cam_mode.follow_mouse_peek;
}