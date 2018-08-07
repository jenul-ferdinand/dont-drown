/// @desc wep_stone_amount_switch();

switch (hitfrom)
{
	case "Hands": { global.iron_count += 5; } break;
	case "Stone Pick": { global.iron_count += 8; } break;
	case "Steel Pick": { global.iron_count += 12; } break;
}