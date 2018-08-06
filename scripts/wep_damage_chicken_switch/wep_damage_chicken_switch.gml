/// @desc wep_damage_chicken_switch();

// Damage Type
switch (obj_player.weapon)
{
	case obj_hands:
	{
		hp -= 10 * 0.5;
	} break;
						
	case obj_stone_pick:
	{
		hp -= 15 * 0.5;
	} break;
						
	case obj_stone_axe:
	{
		hp -= 50 * 0.5;
	} break;
	
	case obj_steel_pick:
	{
		hp -= 25 * 0.5;
	} break;
	
	case obj_steel_axe:
	{
		hp -= 100 * 0.5;	
	} break;
}