/// @desc wep_damage_slime_switch();

// Damage Type
switch (obj_player.weapon)
{
	case obj_hands:
	{
		hp -= 10 * 0.5;
	} break;
						
	case obj_stone_axe:
	{
		hp -= 25 * 0.5;
	} break;
						
	case obj_stone_pick:
	{
		hp -= 15 * 0.5;
	} break;
}