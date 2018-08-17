/// @desc wep_damage_iron_switch();

// Remove Hp
switch (obj_player.weapon)
{
	case obj_hands: 
		hp -= 10 / 2;
		global.iron_count += 5 / 2;
	break;
	
	case obj_stone_pick: 
		hp -= 20 / 2; 
		global.iron_count += 10 / 2;
	break;
	
	case obj_steel_pick:
		hp -= 35 / 2;
		global.iron_count += 20 / 2;
	break;
}