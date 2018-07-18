if (!show_gui) exit;

display_set_gui_size(view_wport[0], view_hport[0]);
// Input
anim += mouse_wheel_down() - mouse_wheel_up();
// Restrict scrolling more than we need to
anim = clamp(anim, 0, array_length_1d(selection)-1);
// Run Script --- Change the third arg to change speed of scroll
anim_n = scr_reach_tween(anim_n, anim, 2);

// Local Variables...
var vector_spacing_x = 64;
var vector_spacing_y = 64;
var vector_move_x = -32;
var vector_move_y = -32;
var vector_move_xy = -32;


for (var i = max(anim - 2, 0); i < min(anim+2, array_length_1d(selection)); i++)
{
	
	var mousex = device_mouse_x_to_gui(0);
	var mousey = device_mouse_y_to_gui(0);
	
	// UI
	var vector_x = lengthdir_x(vector_spacing_x, (i - anim_n) * vector_move_x);
	var vector_y = lengthdir_y(vector_spacing_y, (i - anim_n) * vector_move_y);
	
	draw_set_font(fnt_scrolling_ui);
	draw_set_colour((i == anim)? c_white: c_gray);
	draw_set_alpha((i == anim)? 1: 0.5);
	draw_text_transformed
	(
		// x
		view_wport[0]/2 + vector_x,
		// y
		view_hport[0]/2 + vector_y, 
		// string
		selection[i],
		// xscale
		1,
		// yscale
		1,
		// angle
		(i - anim_n) * vector_move_xy
	);
	draw_set_font(-1);
	draw_set_colour(c_white);
	draw_set_alpha(1);
}

