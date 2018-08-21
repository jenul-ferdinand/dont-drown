// Check For Player
if (!instance_exists(obj_player)) exit;
// Check If Player Is Within The Range
if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
{
	// Check If The Cursor Object Is Collision Checking
	if (obj_cursor.image_index == 3)
	{
		// Check For Left Mouse Button Click
		if (mouse_check_button_pressed(mb_left))
		{
			// Check If The my_textbox Variable Is Equal To Noone
			if (my_textbox == noone)
			{
				// Create One Text Box
				my_textbox = instance_create_layer(x, y, "Instances", obj_textbox);
				// Draw The Text Array
				my_textbox.text = my_text;
				// Set The Creator Variable To Be Ourself
				my_textbox.creator = self;
				// Set The Name Variable To Be My Name
				my_textbox.name = my_name;
			}
		}
	}
}
// If The Player Is Not Within The Range
else
{
	// Check If The my_textbox Variable Is Not Equal To Noone
	if (my_textbox != noone)
	{
		// Destroy Only This Textbox
		instance_destroy(my_textbox);
		// Reset The my_textbox Variable To Equal Noone
		my_textbox = noone;
	}
}


