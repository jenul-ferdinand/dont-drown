///@desc Draw The Time
display_set_gui_size(view_wport[0], view_hport[0]);
draw_set_font(fnt_timer);
// Timer
if (minutes < 10)
	{
	draw_text_outlined(10, 10, string(hours) + ":0" + string(minutes), c_white, c_black);
	}
else
	{
	draw_text_outlined(10, 10, string(hours) + ":" + string(minutes), c_white, c_black);
	}
	
draw_set_font(-1);
display_set_gui_size(640, 360);

