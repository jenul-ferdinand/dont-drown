/// @desc wep_damage_brawuht_switch();

// Damage Type
switch (obj_player.weapon)
{
	// Hands
	case obj_hands:
	{
		hp -= 10 * 0.5;
	} break;
	
	// Wood
	case obj_wood_axe:
	{
		hp -= 15 * 0.5;	
	} break;
	
	case obj_wood_pick:
	{
		hp -= 10 * 0.5;
	}
	
	// Stone
	case obj_stone_axe:
	{
		hp -= 25 * 0.5;
	} break;
						
	case obj_stone_pick:
	{
		hp -= 15 * 0.5;
	} break;
	
	// Steel
	case obj_steel_axe:
	{
		hp -= 30 * 0.5;
	} break;
	
	case obj_steel_pick:
	{
		hp -= 20 * 0.5;
	} break;
}