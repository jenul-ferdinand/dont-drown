// Debug
if (debug)
	{
		draw_circle_colour(x, y, food_distance, c_yellow, c_yellow, true);
		draw_circle_colour(x, y, fear_distance, c_red, c_red, true);
		draw_line_colour(x, y, target_x, target_y, c_white, c_white);
	}
	
// Inherit the parent event
event_inherited();
