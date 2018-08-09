if (drop_move)
{
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	
	if (abs(x - goal_x) < 1 and (abs(y - goal_y) < 1)) { drop_move = false; }
}
else
{
	if (!(mouse_check_button(mb_middle))) exit;
	
	var px = obj_player.x;
	var py = obj_player.y;
	var r = 32;
	
	if (point_in_circle(px, py, x, y, r))
	{
		// Are we On Top Of The Player
		r = 2;
		if (!(point_in_circle(px, py, x, y, r)))
		{
			// Move Towards The Player
			x = lerp(x, px, 0.1);
			y = lerp(y, py, 0.1);
		}
		// Pick Up Item
		else
		{
			scr_pickup(number);
			
			instance_destroy();
		}
	}
}
