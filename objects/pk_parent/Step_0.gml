if (instance_exists(obj_player))
{
	if (place_meeting(x,y, obj_player))
	{
		scr_pickup(number);
		instance_destroy();
	}
}