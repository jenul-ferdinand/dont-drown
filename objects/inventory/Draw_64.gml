//display_set_gui_size(-1, -1);

if (!global.show_inv)
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
	for (var i = 0; i < global.max_items; i++)
	{
		var ix = x1 + 20 + (i * 40);
		var iy = y2 - 24;
		
		draw_sprite(spr_border, 0, ix, iy);
		button[i].x = ix;
		button[i].y = iy;
		
		// Item Numbers
		if (global.inventory[i] != -1)
		{
			draw_set_font(fnt_inventory_digits);
			draw_text(ix + 4, iy, string(global.item_amount[i]));
			draw_set_font(-1);
		}
	}
}

//display_set_gui_size(640, 360);
