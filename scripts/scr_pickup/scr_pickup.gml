//@desc scr_pickup(item_number);

// Slot Checking Loop
for (var i = 0; i < g_max_items; i++)
{
	// If The Slot We Currently Checked Is Empty
	if (global.inventory[i] == -1)
	{
		// Make That Slot The Argument0
		global.inventory[i] = argument0;
		
		// If We Did. Say That We Did
		return(true);
	}
}
return(false);