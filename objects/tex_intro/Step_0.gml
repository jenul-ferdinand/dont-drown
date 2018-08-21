// Check For Player
if (!instance_exists(obj_player)) exit;
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
else
{
	instance_destroy();	
}
