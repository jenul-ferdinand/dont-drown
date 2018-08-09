if (!(mouse_check_button(mb_middle))) exit;
if (instance_exists(obj_player)) 
{
	if (place_meeting(x,y, obj_player))
	{
		scr_pickup(number);
		instance_destroy();
	}
}


if (drop_move)
{
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	if (abs(x - goal_x) < 1 and (abs(y - goal_y) < 1)) { drop_move = false; }
}