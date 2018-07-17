///@desc scr_pickup(item_number);

// Slot Checking Loop
for (var i = 0; i < global.max_items; i++)
{
	// If The Slot We Currently Checked Is Empty
	if (global.inventory[i] == -1)
	{
		// Make That Slot The Argument0
		global.inventory[i] = argument0;
		global.item_amount[i]++;
		
		// If We Did. Say That We Did
		return(true);
	}
}
return(false);