if (global.hunger > 100) { global.hunger = 100; }
if (global.thirst > 100) { global.thirst = 100; }
if (global.oxygen > 100) { global.oxygen = 100; }

// Hunger
if (global.hunger <= 0) { global.player_hp = 0; }

// Thirst
if (global.thirst <= 0) { global.player_hp = 0; }

// Oxygen
if (global.oxygen <= 0) { global.player_hp = 0; }
// Remove Oxygen
if (show_oxygen_bar == true)
{
	if (global.oxygen > 0) { global.oxygen -= 0.35; }
}
// Regen Oxygen
else
{
	if (global.oxygen > 0) { global.oxygen += 0.35; }	
}

