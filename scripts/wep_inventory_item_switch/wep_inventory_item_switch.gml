/// @desc wep_inventory_item_switch();
var item = global.inventory[slot];

switch (item)
{
	// Hands
	case 0: { obj_player.weapon = obj_hands; } break;				
	// Stone Axe
	case 1: { obj_player.weapon = obj_stone_axe; } break;		
	// Stone Pick
	case 2: { obj_player.weapon = obj_stone_pick; } break;
	// Steel Axe
	case 3: { obj_player.weapon = obj_steel_axe; } break;
	// Steel Pick
	case 4: { obj_player.weapon = obj_steel_pick; } break;
}