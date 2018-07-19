if (drop == 0)
{
	scr_drop(0)
	instance_create_layer(obj_player.x, obj_player.y, "Items", pk_hands_0);
	show_debug_message("Item Dropped");
}

if (drop == 1)
{
	scr_drop(1)
	instance_create_layer(obj_player.x, obj_player.y, "Items", pk_stone_axe_1);
	show_debug_message("Item Dropped");
}

if (drop == 2)
{
	scr_drop(2)
	instance_create_layer(obj_player.x, obj_player.y, "Items", pk_stone_pick_2);
	show_debug_message("Item Dropped");
}


