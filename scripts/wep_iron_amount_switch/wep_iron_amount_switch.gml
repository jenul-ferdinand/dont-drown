/// @desc wep_iron_amount_switch();

switch (hitfrom)
{
	case "Hands": { global.stone_count += 5; } break;
	case "Stone Pick": { global.stone_count += 8; } break;
	case "Steel Pick": { global.stone_count += 12; } break;
}