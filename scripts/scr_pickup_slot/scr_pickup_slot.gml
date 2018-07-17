///@desc scr_pickup_slot(item, slot);

var ix = inventory_mouse_item.x
var iy = inventory_mouse_item.y

if (global.inventory[argument1] == -1)
{
	global.inventory[argument1] = argument0;
	return(true);
}
return(false);








