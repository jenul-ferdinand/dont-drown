/// @desc wep_damage_tree_switch();

// Remove Hp
switch (obj_player.weapon)
{
	case obj_hands: 
		hp -= 10 * 0.5; 
		global.wood_count += 5 / 2;
	break;
	
	case obj_stone_axe: 
		hp -= 20 * 0.5; 
		global.wood_count += 10 / 2;
	break;
	
	case obj_steel_axe: 
		hp -= 35 * 0.5; 
		global.wood_count += 20 / 2;
	break;
}
