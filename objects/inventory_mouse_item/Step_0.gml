var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var item = global.mouse_item;

if (item != -1)
{
	if (mousey > 280)
	{
		if (keyboard_check(vk_shift) && (mouse_check_button_pressed(mb_left)))
		{
			// Item Number
			var ic = scr_itemcheck(global.mouse_item);
			instance_create_layer(obj_player.x, obj_player.y, "Instances", pk_bread_14);
			
			global.mouse_item = -1;
			show_debug_message("dropped");
		}
	}
}