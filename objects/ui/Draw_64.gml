//Draw The Quickslots
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_sprite(spr_ui, 0, 640 / 2, 360); // <-- 3 Center Slot 
draw_sprite(spr_ui, 0, 640 / 2+35, 360); // <-- 2
draw_sprite(spr_ui, 0, 640 / 2+35 * 2, 360); // <-- 1
draw_sprite(spr_ui, 0, 640 / 2-35, 360); // <-- 4
draw_sprite(spr_ui, 0, 640 / 2-35 * 2, 360); // <-- 5

if (slot_1 != noone)
	{
		if (slot_1_selected == false)
			{
				draw_sprite_ext(object_get_sprite(slot_1), 0, 640 / 2-35 * 2, 360, 1, 1, image_angle+90, c_white, 1);
			}
		else
			{
				draw_sprite_ext(object_get_sprite(slot_1), 0, mx, my, 1, 1, image_angle+90, c_white, 1);
			}
	}
	
if (slot_2 != noone)
	{
		if (slot_2_selected == false)
			{
				draw_sprite_ext(object_get_sprite(slot_2), 0, 640 / 2-35, 360, 1, 1, image_angle+90, c_white, 1);
			}
		else
			{
				draw_sprite_ext(object_get_sprite(slot_2), 0, mx, my, 1, 1, image_angle+90, c_white, 1);
			}
	}
	
if (slot_3 != noone)
	{
		if (slot_3_selected == false)
			{
				draw_sprite_ext(object_get_sprite(slot_3), 0, 640 / 2, 360, 1, 1, image_angle+90, c_white, 1);
			}
		else
			{
				draw_sprite_ext(object_get_sprite(slot_3), 0, mx, my, 1, 1, image_angle+90, c_white, 1);
			}
	}
	
if (slot_4 != noone)
	{
		if (slot_4_selected == false)
			{
				draw_sprite_ext(object_get_sprite(slot_4), 0, 640 / 2+35, 360, 1, 1, image_angle+90, c_white, 1);
			}
		else
			{
				draw_sprite_ext(object_get_sprite(slot_4), 0, mx, my, 1, 1, image_angle+90, c_white, 1);
			}
	}
	
if (slot_5 != noone)
	{
		if (slot_5_selected == false)
			{
				draw_sprite_ext(object_get_sprite(slot_5), 0, 640 / 2+35 * 2, 360, 1, 1, image_angle+90, c_white, 1);
			}
		else
			{
				draw_sprite_ext(object_get_sprite(slot_5), 0, mx, my, 1, 1, image_angle+90, c_white, 1);
			}
	}
	



