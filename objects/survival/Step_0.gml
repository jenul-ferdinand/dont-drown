if (global.oxygen > 100) { global.oxygen = 100; }

// Oxygen
if (global.oxygen <= 0) { obj_player.hp = 0; }
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

