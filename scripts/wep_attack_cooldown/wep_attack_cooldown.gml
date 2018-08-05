/// @desc wep_attack_cooldown();

// Cap Cooldown
if (cooldown > 100) { cooldown = 100; }

// Different Rates For Different Weapons
switch (weapon)
{
	case obj_hands: cooldownRate = 3; break;
	case obj_stone_axe: cooldownRate = 5; break;
	case obj_stone_pick: cooldownRate = 7; break;
}

// Timer
if (cooldown > 0) { cooldown -= cooldownRate; }

// Debug
//show_debug_message(cooldown);
//show_debug_message(cooldownRate);