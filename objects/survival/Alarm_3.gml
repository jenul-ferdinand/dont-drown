///@desc Oxygen
if (show_oxygen_bar == true)
{
	if (global.oxygen > 0) { global.oxygen -= 1; }

	alarm[3] = oxygen_rate;
}