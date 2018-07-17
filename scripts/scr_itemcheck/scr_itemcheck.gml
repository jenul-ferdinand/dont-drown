///@desc scr_itemcheck(item_number);

// Slot Checking Loop
for (var i = 0; i < global.max_items; i++)
{
	// If The Slot We Currently Checked Contains Argument0
	if (global.inventory[i] == argument0)
	{
		// If We Did. Say That We Did
		return(true);
	}
}
return(false);