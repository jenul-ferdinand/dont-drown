// ------ Random Movement
if (attack = 0 && (distance_to_object(obj_player) > 75))
{
	move_time--;
	if (move_time == 0)
	{ 
		move = choose(0, 1, 2, 3, 4);
		move_time = 120;
	}

	if (move != 0)
	{
		image_speed = 1;	
	}

	if (move == 0)
	{
		// Up
		if (sprite_index == spr_growler_run_up)
		{
			image_index = 0;	
		}
	
		// Right
		if (sprite_index == spr_growler_run_right)
		{
			image_index = 1;
		}
	
		// Down
		if (sprite_index == spr_growler_run_down)
		{
			image_index = 2;	
		}
	
		// Left
		if (sprite_index == spr_growler_run_left)
		{
			image_index = 3;	
		}
	
		image_speed = 0;
		sprite_index = spr_growler_stand;
	}

	// Up
	if (move == 1) 
	{
		sprite_index = spr_growler_run_up;	
		if (place_free(x, y - spd))
		{
			y -= spd;	
		}
	}

	// Right
	if (move == 2) 
	{
		sprite_index = spr_growler_run_right;	
		if (place_free(x + spd, y))
		{
			x += spd;	
		}
	}

	// Down
	if (move == 3) 
	{
		sprite_index = spr_growler_run_down;	
		if (place_free(x, y + spd))
		{
			y += spd;	
		}
	}

	// Left
	if (move == 4) 
	{
		sprite_index = spr_growler_run_left;	
		if (place_free(x - spd, y))
		{
			x -= spd;	
		}
	}
}



// ------ Chase Movement
if (attack = 0 && distance_to_object (obj_player) <= 75) 
{
	mp_potential_step(obj_player.x, obj_player.y, 1.5, false);
	image_speed = 1;
	
	// Player On Right
	if (obj_player.x > x && obj_player.y = y)
	{
		sprite_index = spr_growler_run_right;
	}
	
	// Player On Left
	if (obj_player.x < x && obj_player.y = y) 
	{
		sprite_index = spr_growler_run_left;
	}
	
	// Player On Up
	if (obj_player.y < y && obj_player.x = x) 
	{
		sprite_index = spr_growler_run_up;
	}
	
	// Player On Down
	if (obj_player.y > y && obj_player.x = x)
	{
		sprite_index = spr_growler_run_down;
	}
	
	// Player On Right Down
	if (obj_player.x > x && obj_player.y > y)
	{ 
		// More On Right
		if (abs(obj_player.x-x > obj_player.y-y)) 
		{
	        sprite_index = spr_growler_run_right;
		}
		else
		{
			sprite_index = spr_growler_run_down;
		}
	}

	// Player On Left Down
	if (obj_player.x < x && obj_player.y > y) 
	{ 
		// More On Left
		if (abs(x-obj_player.x > obj_player.y-y))
		{
	        sprite_index = spr_growler_run_left;
		}
		else
		{
	        sprite_index = spr_growler_run_down;
		}
	}
    
	// Player On Left Up
	if (obj_player.x < x && obj_player.y < y)
	{ 
		// More On Left
		if (abs(x-obj_player.x > y-obj_player.y))
		{
	        sprite_index = spr_growler_run_left;
		}
	    else
		{
		    sprite_index = spr_growler_run_up;
		}
	}

	// Player On Right Up
	if (obj_player.x > x && obj_player.y < y)
	{ 
		// More On Right
		if (abs(obj_player.x-x > y-obj_player.y))
		{
	        sprite_index = spr_growler_run_right;
		}
	    else
		{
	        sprite_index = spr_growler_run_up;
		}
	}
}



















