//Follow The Player Better
if (instance_exists(obj_player))
	{
	x = obj_player.x;
	y = obj_player.y-6;
	}
else
	{
	instance_destroy();
	}