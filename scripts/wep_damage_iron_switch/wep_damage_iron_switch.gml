/// @desc wep_damage_iron_switch();

// Remove Hp
switch (obj_player.weapon)
{
	// Hands
	case obj_hands: 
		hp -= 5 / 2;
		global.iron_count += 50 / 2;
	break;
	
	// Stone Pick
	case obj_stone_pick: 
		hp -= 10 / 2; 
		global.iron_count += 100 / 2;
	break;
	
	// Steel
	case obj_steel_pick:
		hp -= 15 / 2;
		global.iron_count += 200 / 2;
	break;
}