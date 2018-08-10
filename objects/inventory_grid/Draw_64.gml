if (!(instance_exists(obj_player))) exit;
if (global.show_inv == true)
{
	// Draw The Black Rectangle
	var x1, x2, y1, y2;
	var rectangle_height = 280;
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
		stack = 0
        k = 0
		
		// Row 2
		if (i >= global.max_items * 0.25)
		{
			stack = 40;
		}
		
        if (stack > 0)
		{
			k = 40 * (0.25 * global.max_items);
		}
		
		// Row 3
        if (i >= global.max_items * 0.5)
		{
			stack = 40 * 2;
		}
		
        if (stack > 40)
		{
			k = 40* (0.25 * global.max_items) * 2;
		}
		
		// Row 4
        if (i >= global.max_items * 0.75)
		{
			stack = 40 * 3;
		}
		
        if (stack > 40 * 2)
		{
			k = 40 * (0.25 * global.max_items) * 3;
		}
		
        draw_sprite(spr_border, 0, 38 + (i * 40) - k, 32 + stack);
        button[i].x = 38 + (i * 40) - k;
        button[i].y = 32 + stack;
	}
	
	// Draw The Amount Of Resources
	display_set_gui_size(-1, -1);
	draw_set_font(fnt_crafting);
	
	// Wood
	draw_text_outlined
	(
		25, 345, 
		"Wood: " + string(global.wood_count), 
		c_brown, c_black
	);
	
	// Stone
	draw_text_outlined
	(
		25, 365, 
		"Stone: " + string(global.stone_count), 
		c_gray, c_black
	);
	
	// Iron
	draw_text_outlined
	(
		25, 385,
		"Iron: " + string(global.iron_count),
		c_white, c_black
	);
	
	draw_set_font(-1);
	display_set_gui_size(640 , 360);
}

