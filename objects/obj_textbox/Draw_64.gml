// Set Gui Size
display_set_gui_size(view_wport[0], view_hport[0]);

// Draw Textbox
draw_sprite(spr_box, 0, draw_x, draw_y);

// Draw Text
draw_set_font(fnt_crafting);
draw_text_ext(draw_x, draw_y, text, str_height, box_width);

display_set_gui_size(-1, -1);
