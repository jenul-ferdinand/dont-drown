/// @desc scr_animal_check_for_player();

// Check For Player
if (instance_exists(obj_player))
{
	
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	//If In Can See The Player
	if (dis < sight)
	{
		// Change Speed
		normal_speed = 2;
		// More Chance Of Wandering
		alarm[0] = room_speed * irandom_range(1, 2);
	}
	// If You Cant See The Player
	else
	{
		// Change Speed 
		normal_speed = 1;
		// Choose New State
		scr_animal_choose_next_state();
	}
}