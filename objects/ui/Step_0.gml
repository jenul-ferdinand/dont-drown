//Make The UI Follow The Player
x = obj_player.x;
y = obj_player.y;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (my >= 360-32)
	{
		if (mx >= 640 / 2 - 35 * 2 and mx <= 640 / 2 + 35 * 2)
			{
				obj_player.state = scr_player_quick_slotting;
			}
	}
