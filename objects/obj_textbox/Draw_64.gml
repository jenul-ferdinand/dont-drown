// Set Gui Size
display_set_gui_size(-1, -1);

// Draw Textbox
draw_set_colour(c_white);
draw_rectangle(draw_x - 2, draw_y - 2, draw_x + box_width + 2, draw_y + box_height + 2, false);
draw_set_colour(c_white);
draw_sprite(spr_box, 0, draw_x, draw_y);

// Draw Text
draw_set_font(fnt_crafting);
// Type Writer
if (char_count < string_length(text[page])) { char_count += 0.5; }
// Draw The Text Like A Type Writer
text_part = string_copy(text[page], 1, char_count);
// Draw The Name
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(draw_x + (box_width / 2), draw_y + y_buffer, name);
draw_set_halign(fa_left);
// Draw The Main Text
draw_text_ext
(
	draw_x + x_buffer, 
	draw_y + str_height + y_buffer, 
	text_part, 
	str_height, 
	box_width - (2 * x_buffer)
);

draw_set_colour(c_white);
draw_set_font(-1);

// Reset Gui Size
display_set_gui_size(-1, -1);
