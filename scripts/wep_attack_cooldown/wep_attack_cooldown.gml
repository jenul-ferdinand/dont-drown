/// @desc wep_attack_cooldown();

// Cap Cooldown
if (cooldown > 100) { cooldown = 100; }

// Different Rates For Different Weapons - Higher Is Faster
switch (weapon)
{
	// Hands
	case obj_hands: cooldownRate = 1.8; break;
	// Wood
	case obj_wood_axe: cooldownRate = 2.8; break;
	case obj_wood_pick: cooldownRate = 2.8; break;
	// Stone
	case obj_stone_axe: cooldownRate = 3; break;
	case obj_stone_pick: cooldownRate = 3; break;
	// Steel
	case obj_steel_axe: cooldownRate = 3.2; break;
	case obj_steel_pick: cooldownRate = 3.2; break;
}

// Timer
if (cooldown > 0) { cooldown -= cooldownRate; }

// Debug
//show_debug_message(cooldown);
//show_debug_message(cooldownRate);