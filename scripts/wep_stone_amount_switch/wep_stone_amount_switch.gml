/// @desc wep_stone_amount_switch();

switch (hitfrom)
{
	case "Hands": { global.stone_count += 5; } break;
	case "Stone Pick": { global.stone_count += 10; } break;
	case "Steel Pick": { global.stone_count += 20; } break;
}