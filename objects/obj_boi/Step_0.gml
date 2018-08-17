if (place_meeting(x, y, obj_player))
{
	if (my_textbox == noone)
	{
		// Create One Text Box
		my_textbox = instance_create_layer(x, y, "Instances", obj_textbox);
		my_textbox.text = "Where am I... my starship has crashed.";
	}
}
else
{
	if (my_textbox != noone)
	{
		// Destroy This Textbox -- Not All Of Them
		instance_destroy(my_textbox);
		my_textbox = noone;
	}
}


