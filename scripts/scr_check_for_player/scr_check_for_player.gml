/// @desc scr_check_for_player();

if (instance_exists(obj_player))
{
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	// If In Can See The Player
	if (dis < sight)
	{
		// Change To The Chase State
		state = scr_enemy_chase_state;
		// Change Target To Player
		var dir = point_direction(x, y, obj_player.x, obj_player.y);
		x_axis = lengthdir_x(1, dir);
		y_axis = lengthdir_y(1, dir);
	}
	// If You Cant See The Player
	else
	{
		// Choose New State
		scr_enemy_choose_next_state();
	}
}
