display_set_gui_size(view_wport[0], view_hport[0]);

//draw_sprite(spr_stone_node_1, 0, 72, 32);
draw_set_font(fnt_crafting);
draw_text_outlined(88, 10, "Stones: " + string(global.stone_count), c_gray, c_black);

//draw_sprite(spr_oak_tree, 0, 148, 34);
draw_text_outlined(88, 30, "Wood: " + string(global.wood_count), c_brown, c_black);
draw_set_font(-1);

display_set_gui_size(640 , 360);

