// Draw Infront Of Everything Else
depth = -1000;

/*
Items
0 = Stone Axe
1 = Stone Pick
2 = Bottled Water
*/

// Display Inventory?
global.show_inv = true;

// Total Amount Of Slots In The Inventory
global.max_items = 60;

stack = 0;

// Array
for (i = 0; i < global.max_items; i++)
{
	global.inventory[i] = -1;
	global.item_amount[i] = 0;
	button[i] = instance_create_depth(0, 0, -1001, inventory_button);
	button[i].slot = i;
}

// What Is The Mouse Holding
global.mouse_item = -1;
// Object Thats Gonna Follow The Mouse Around
instance_create_depth(0, 0, -1002, inventory_mouse_item);

globalvar fullInv;
fullInv = 0;
globalvar noitem;
noitem = 0;

// Add the hand to the inventory at the start of the game.. lol
scr_pickup(0);
