// Draw The Bars
display_set_gui_size(view_wport[0], view_hport[0]);
draw_set_font(f_kenblocks_18);

#region Health
display_set_gui_size(640, 360);
// Vars
var xoff = 24;
var xx = 20;
var yy = 340;
// Draw The Grey Hearts
for (var i = 0; i < obj_player.maxhp; i++)
{
	draw_sprite_ext(spr_heart_full, 0, xx + (xoff * i), yy, 1,1, 0, c_black, 0.3);
}
// Draw The Hearts
for (var i = 0; i < obj_player.hp; i++)
{
	draw_sprite(spr_heart_full, 0, xx + (xoff * i), yy);
}
display_set_gui_size(view_wport[0], view_hport[0]);
#endregion

#region Oxygen
if (show_oxygen_bar == true)
{
	draw_set_alpha(a);
	draw_healthbar(350, 680, 700, 710, global.oxygen, c_black, c_blue, c_blue, -1, 1, 1);
	draw_set_alpha(1);
	draw_text_outlined(485, 680, "Oxygen", c_blue, c_black);
}
#endregion

// Reset The Font
draw_set_font(-1);
