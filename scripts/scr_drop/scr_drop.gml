///@desc scr_drop(item_number);

// Slot Checking Loop
for (var i = 0; i < global.max_items; i++)
{
	// If The Slot We Currently Checked Contains Arg0
	if (global.inventory[i] == argument0)
	{
		// Remove The Item
		global.inventory[i] = -1;
		
		// If We Did. Say That We Did
		return(true);
	}
}
return(false);