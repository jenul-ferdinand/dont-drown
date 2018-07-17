var item = global.mouse_item;

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

if (item != -1)
{
	// X, Y Location Of The GUI Mouse
	x = mousex;
	y = mousey;
	
	// Draw The Item On The Mouse
	draw_sprite(spr_items, item, x, y);
	
	for (var i = 0; i < global.max_items; i++)
	{
		draw_set_font(fnt_inventory_digits);
		draw_text(x + 4, y, string(global.item_amount[i]));
		draw_set_font(-1);
	}
}
