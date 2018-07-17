display_set_gui_size(-1, -1);

if (g_show_inv)
{
	// Draw The Black Rectangle
	var x1, x2, y1, y2;
	var rectangle_height = 48;
	x1 = view_xport[0];
	x2 = x1 + view_wport[0];
	y1 = view_yport[0];
	y2 = y1 + rectangle_height;
	
	draw_set_colour(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	// Draw The Slots
	for (var i = 0; i < g_max_items; i++)
	{
		draw_sprite(spr_border, 0, ((x1 + 24) + (i * 40)), y2 - 24)
		
		// Check If The i Value We Are At Is Equal To An Item
		if (global.inventory[i] != -1)
		{
			draw_sprite(spr_items, global.inventory[i], ((x1 + 24) + (i * 40)), y2 - 24);
		}
	}
}

display_set_gui_size(640, 360);
