if (!(instance_exists(obj_player))) exit;
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
}
