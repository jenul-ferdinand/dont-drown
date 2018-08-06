/// @desc wep_inventory_selected_icon();

// Draw The Item Selected In The Game
if (obj_player.weapon == obj_hands)
{
	draw_sprite(spr_items, 0, 600, 330);
}
// Stone Axe
else if (obj_player.weapon == obj_stone_axe)
{
	draw_sprite(spr_items, 1, 600, 330);
}
// Stone Pick
else if (obj_player.weapon == obj_stone_pick)
{
	draw_sprite(spr_items, 2, 600, 330);
}
// Steel Pick
else if (obj_player.weapon == obj_steel_pick)
{
	draw_sprite(spr_items, 21, 600, 330);
}
// Steel Axe
else if (obj_player.weapon == obj_steel_axe)
{
	draw_sprite(spr_items, 22, 600, 300);	
}