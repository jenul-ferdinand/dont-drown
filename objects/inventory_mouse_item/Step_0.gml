if (!(instance_exists(obj_player))) exit;
#region Item Type || ADD MORE FOR EVERY NEW ITEM!!!
var i = 0;
switch (global.mouse_item)
{
	case 0:
		creating_object = dropped_item[0];
	break;
	
	case 1:
		creating_object = dropped_item[1];
	break;
	
	case 2:
		creating_object = dropped_item[2];
	break;
	
	case 3:
		creating_object = dropped_item[3];
	break;
	
	case 4:
		creating_object = dropped_item[4];
	break;
	
	case 5:
		creating_object = dropped_item[5];
	break;
	
	case 6:
		creating_object = dropped_item[6];
	break;
	
	case 7:
		creating_object = dropped_item[7];
	break;
	
	case 8:
		creating_object = dropped_item[8];
	break;
	
	case 9:
		creating_object = dropped_item[9];
	break;
	
	case 10:
		creating_object = dropped_item[10];
	break;
	
	case 11:
		creating_object = dropped_item[11];
	break;
	
	case 12:
		creating_object = dropped_item[12];
	break;
	
	case 13:
		creating_object = dropped_item[13];
	break;
	
	case 14:
		creating_object = dropped_item[14];
	break;
	
	case 15:
		creating_object = dropped_item[15];
	break;
	
	case 16:
		creating_object = dropped_item[16];
	break;
	
	case 17:
		creating_object = dropped_item[17];
	break;
	
	case 18:
		creating_object = dropped_item[18];
	break;
	
	case 19:
		creating_object = dropped_item[19];
	break;
	
	case 20:
		creating_object = dropped_item[20];
	break;
	
	case 21:
		creating_object = dropped_item[21];
	break;
	
	case 22:
		creating_object = dropped_item[22];
	break;
}

#endregion

// Dropping
var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);
var item = global.mouse_item;

if (item != -1)
{
	if (mousey > 190)
	{
		if (mouse_check_button_pressed(mb_left))
		{
			instance_create_layer
			(
				obj_player.x, obj_player.y, 
				"Instances",
				creating_object
			);
			
			global.mouse_item = -1;
			show_debug_message("dropped");
		}
	}
}