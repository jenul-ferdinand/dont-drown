// Draw Infront Of Everything Else
depth = -y;

/*
Items
0 = Stone Axe
1 = Stone Pick
2 = Bottled Water
*/

// Display Inventory?
globalvar g_show_inv; 
g_show_inv = true;

// Total Amount Of Slots In The Inventory
globalvar g_max_items;
g_max_items = 5;

// Array
for (var i = 0; i < g_max_items; i++)
{
	global.inventory[i] = -1;
}

