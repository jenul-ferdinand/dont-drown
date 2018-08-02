/// @desc scr_check_for_player();

if (instance_exists(obj_player))
{
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	// If In Can See The Player
	if (dis < sight)
	{
		// Change To The Chase State
		state = scr_enemy_chase_state;
		
		// Change Target
		targetX = obj_player.x;
		targetY = obj_player.y;
	}
	// If The Player Doesnt Exist
	else
	{
		// Choose New State
		scr_enemy_choose_next_state();
	}
}
