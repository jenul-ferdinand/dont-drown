if (minutes < 55)
	{
	minutes += 5;
	}
else
	{
	if (hours < 23)
		{
		hours++; minutes = 0;
		}
	else
		{
		hours = 0; minutes = 0;
		}
	
	// Progress Into Night Time
	if (hours = 15)
		{
		alarm[1] = room_speed*12;
		}
	
	// Progress Into Day Time
	if (hours = 3)
		{
		alarm[2] = room_speed*12;
		}
	}
alarm[0] = room_speed;
