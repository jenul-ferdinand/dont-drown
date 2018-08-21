// If The Mouse Button Is Clicked And Our Cursor Is Colliding With The Object
if (mouse_check_button_pressed(mb_left))
{ 
	// If The char_count Is Less Than The Max Amount Of Letters On The Page Which We Are On
	if (char_count < string_length(text[page]))
	{
		// Set The char_count Equal To The Max Amount
		char_count = string_length(text[page]);	
	}
	// Only Increment The Page, If Page + 1, Is Less Than The Total Number Of Entries
	else if (page + 1 < array_length_1d(text))
	{
		// Increment The Page
		page++;
		char_count = 0;
	}
	else
	{
		instance_destroy();
		
		if (instance_exists(creator))
		{
		// Dont Loop The Textbox
		creator.alarm[0] = 1;
		}
	}
}