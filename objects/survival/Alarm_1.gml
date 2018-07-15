///@desc Thirst
if (global.thirst > 0) 
	{ 
		if (obj_player.run_key)		  //Running
			{
				global.thirst -= 2;
			}
		else if (obj_player.walk_key) //Walking
			{
				global.thirst -= 0.5	
			}
		else						  //Normal
			{
				global.thirst -= 1; 
			}	
	}

alarm[1] = thirst_rate;
