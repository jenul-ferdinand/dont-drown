x = mouse_x;
y = mouse_y;
depth = -y;

// Tree
if (place_meeting(x, y, obj_tree))
{
	image_index = 2;	
}
else if (place_meeting(x, y, obj_stone_node))
{
	image_index = 2;	
}
else if (place_meeting(x, y, obj_iron_node))
{
	image_index = 2;	
}

// Enemy
else if (place_meeting(x, y, obj_enemy_slime))
{
	image_index = 1;	
} else { image_index = 0; }

if (global.show_inv)
{
	cursor_sprite = spr_cursor_gui;
}
else
{
	cursor_sprite = noone;
}