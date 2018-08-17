display_set_gui_size(view_wport[0], view_hport[0]);

if (debug)
{
	draw_set_font(fnt_crafting);
	draw_text_outlined(5, 50, "STATE: " + string(state), c_white, c_black);	
	draw_set_font(-1);
}

display_set_gui_size(640, 360);