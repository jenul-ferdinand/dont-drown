if (distance_to_object(obj_player) <= 32)
	{
	if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, obj_water))
		{
		global.thirst += 10;
		global.hunger -= 1;
		instance_destroy();
		}
	}