if (!(instance_exists(obj_player))) exit;
if (!show_gui) exit;


display_set_gui_size(view_wport[0], view_hport[0]);
// Input
anim += mouse_wheel_down() - mouse_wheel_up();
anim += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
anim += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
// Restrict scrolling more than we need to
anim = clamp(anim, 0, array_length_1d(selection)-1);
// Run Script --- Change the third arg to change speed of scroll
anim_n = scr_reach_tween(anim_n, anim, 2);

// Local Variables...
var vector_spacing_x = 64;
var vector_spacing_y = 128;
var vector_move_x = -32;
var vector_move_y = -32;
var vector_move_xy = -32;
var drawx = 10;
var drawy = 300;

// Black Box
var c = c_black;
draw_set_alpha(0.8);
draw_rectangle_colour(0, 0, 600, 560, c,c,c,c, false);
draw_set_alpha(1);

// Ui Name
draw_set_font(fnt_scrolling_ui);
draw_set_colour(c_white);
draw_text(450, 10, "Crafting");
draw_set_colour(c_white);
draw_set_font(-1);
	
for (i = max(anim - 2, 0); i < min(anim+2, array_length_1d(selection)); i++)
{
	var vector_x = lengthdir_x(vector_spacing_x, (i - anim_n) * vector_move_x);
	var vector_y = lengthdir_y(vector_spacing_y, (i - anim_n) * vector_move_y);
	
	// UI
	draw_set_font(fnt_scrolling_ui);
	draw_set_colour((i == anim)? c_white: c_gray);
	draw_set_alpha((i == anim)? 1: 0.5);
	draw_text(drawx + vector_x, (drawy + ((i - anim_n) * 18)) - 8 + vector_y, string(selection[i]));
	
	//draw_text_transformed
	//(
	//	drawx + vector_x, 
	//	drawy + vector_y, 
	//	string(selection[i]),
	//	1,1,
	//	(i - anim_n) * vector_move_xy
	//);
	
	// Recipe
	if (i == anim) {draw_text((drawx + vector_x) + 250, drawy + vector_y, cost[i]);}
	draw_set_font(-1);
	draw_set_colour(c_white);
	draw_set_alpha(1);
}


	

