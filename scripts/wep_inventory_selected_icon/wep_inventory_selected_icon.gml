/// @desc wep_inventory_selected_icon();

// Draw The Item Selected In The Game
if (obj_player.weapon == obj_hands)
{
	draw_sprite(spr_items, 0, 600, 330);
}
else if (obj_player.weapon == obj_stone_axe)
{
	draw_sprite(spr_items, 1, 600, 330);
}
else if (obj_player.weapon == obj_stone_pick)
{
	draw_sprite(spr_items, 2, 600, 330);
}