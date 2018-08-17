/// @desc wep_inventory_item_switch();
var item = global.inventory[slot];

if (instance_exists(obj_player))
{
	switch (item)
	{
		// Hands
		case 0:	
			var ic = scr_itemcheck(0);
			if (ic) obj_player.weapon = obj_hands;
		break;
		// Stone Axe
		case 1: 
			var ic = scr_itemcheck(1);
			if (ic) obj_player.weapon = obj_stone_axe; 
		break;		
		// Stone Pick
		case 2:	
			var ic = scr_itemcheck(2);
			if (ic) obj_player.weapon = obj_stone_pick; 
		break;
		// Steel Axe
		case 8: 
			var ic = scr_itemcheck(8);
			if (ic) obj_player.weapon = obj_steel_axe; 
		break;
		// Steel Pick
		case 9: 
			var ic = scr_itemcheck(9);
			if (ic) obj_player.weapon = obj_steel_pick; 
		break;
		// Wood Axe
		case 10:
			var ic = scr_itemcheck(10);
			if (ic) obj_player.weapon = obj_wood_axe;
		break;
		// Wood Pick
		case 11:
			var ic = scr_itemcheck(11);
			if (ic) obj_player.weapon = obj_wood_pick;
		break;
	}
}