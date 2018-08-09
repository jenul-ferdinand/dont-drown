/// @desc wep_damage_stone_switch();

// Remove Hp and Add Amount
switch (obj_player.weapon)
{
	case obj_hands:
		hp -= 5 / 2;
		global.stone_count += 50 / 2;
	break;
	
	case obj_stone_pick: 
		hp -= 10 / 2; 
		global.stone_count += 100 / 2;
	break;
	
	case obj_steel_pick: 
		hp -= 15 / 2;
		global.stone_count += 200 / 2;
	break;
}