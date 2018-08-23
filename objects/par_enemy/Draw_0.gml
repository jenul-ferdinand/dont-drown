// Inherit the parent event
event_inherited();

// Debug
if (keyboard_check_pressed(ord("P"))) { debug = !debug; }
if (debug == true)
{
	// Draw The Sight Range
	draw_circle(x, y, sight, 1);
	// Draw The Amount Of Health
	draw_text(x, y - 16, "HP: " + string(hp))
}
