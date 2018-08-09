/// @desc wep_iron_amount_switch();

switch (hitfrom)
{
	case "Hands": { global.iron_count += 5; } break;
	case "Stone Pick": { global.iron_count += 10; } break;
	case "Steel Pick": { global.iron_count += 20; } break;
}