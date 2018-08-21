x = mouse_x;
y = mouse_y;
depth = -y;

// Tree
if (place_meeting(x, y, obj_tree))
{
	image_index = 2;	
}
// Stone
else if (place_meeting(x, y, obj_stone_node))
{
	image_index = 2;	
}
// Iron
else if (place_meeting(x, y, obj_iron_node))
{
	image_index = 2;	
}
// NPC
else if (place_meeting(x, y, obj_boi))
{
	image_index = 3;	
}
// Lifeform
else if (place_meeting(x, y, par_enemy))
{
	image_index = 1;	
} else { image_index = 0; }


if (global.show_inv)
{
	cursor_sprite = spr_cursor_gui;
	sprite_index = noone;
}
else
{
	cursor_sprite = noone;
	sprite_index = spr_cursor;
}