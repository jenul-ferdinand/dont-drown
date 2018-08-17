/// @desc wep_damage_stone_switch();

// Remove Hp and Add Amount
switch (obj_player.weapon)
{
	case obj_hands:
		hp -= 10 / 2;
		global.stone_count += 5 / 2;
	break;
	
	case obj_stone_pick: 
		hp -= 20 / 2; 
		global.stone_count += 10 / 2;
	break;
	
	case obj_steel_pick: 
		hp -= 35 / 2;
		global.stone_count += 20 / 2;

	break;
}
