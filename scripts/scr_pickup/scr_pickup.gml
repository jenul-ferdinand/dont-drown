///@desc scr_pickup(item_number);

// Slot Checking Loop
for (i = 0; i < global.max_items; i++)
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