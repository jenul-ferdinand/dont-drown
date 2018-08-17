// Draw Textbox
draw_sprite(spr_box, 0, x, y);

display_set_gui_size(640, 360)
// Draw Text
draw_set_font(fnt_crafting);
draw_text_ext(x, y, text, str_height, box_width);
