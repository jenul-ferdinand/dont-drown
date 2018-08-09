display_set_gui_size(view_wport[0], view_hport[0]);

// Debug
if (debug == true)
{
	var c = c_white;
	var xx = 1100;
	draw_text_colour(xx, 10, "Seconds: " + string(seconds), c,c,c,c, 1);
	draw_text_colour(xx, 30, "Minutes: " + string(minutes), c,c,c,c, 1);
	draw_text_colour(xx, 50, "Hours: "   + string(hours),   c,c,c,c, 1);
	draw_text_colour(xx, 70, "Days: "    + string(day),     c,c,c,c, 1);
	draw_text_colour(xx, 90, "Months: "  + string(month),   c,c,c,c, 1);
	draw_text_colour(xx, 110, "Years: "  + string(year),    c,c,c,c, 1);
}

display_set_gui_size(640, 360);
