// Draw The Bars
if (!(room == rm_crafting))
	{
		display_set_gui_size(view_wport[0], view_hport[0]);
		draw_set_font(fnt_crafting);
		a = 0.5;
		
		//health
		draw_set_alpha(a);
		draw_healthbar(12, 680, 212, 710, global.player_hp, c_black, c_green, c_red, -1, 1, 1);
		draw_set_alpha(1);
		draw_text_outlined(14, 685, "Health", c_red, c_black);
		//hunger
		draw_set_alpha(a);
		draw_healthbar(12, 640, 212, 670, global.hunger, c_black, c_green, c_green, -1, 1, 1);
		draw_set_alpha(1);
		draw_text_outlined(14, 645, "Hunger", c_green, c_black);
		//thirst
		draw_set_alpha(a);
		draw_healthbar(12, 600, 212, 630, global.thirst, c_black, c_blue, c_blue, -1, 1, 1);
		draw_set_alpha(1);
		draw_text_outlined(14, 605, "Thirst", c_blue, c_black);
		//sanity
		draw_set_alpha(a);
		draw_healthbar(12, 560, 212, 590, global.sanity , c_black, c_purple, c_purple, -1, 1, 1);
		draw_set_alpha(1);
		draw_text_outlined(14, 565, "Sanity", c_purple, c_black);
		
		
		draw_set_font(-1);
		display_set_gui_size(640 , 360);
	}
