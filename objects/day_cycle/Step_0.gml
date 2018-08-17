// Pause
if (keyboard_check_pressed(ord("T"))) { time_pause = !time_pause; }
if (keyboard_check_pressed(ord("P"))) { debug = !debug; }
if (time_pause) exit;

// Increment Time 
seconds += time_increment;
minutes = seconds / 60;
hours = minutes / 60;


if (draw_daylight)
{
	// Phases And Variables
	var darks, colours, pstart, pend;
		
	if (hours > phase.sunrise and hours <= phase.daytime)       // Sunrise
	{
		darks	= [max_darkness, 0.2];
		//colours = [merge_colour(c_black, c_navy, 0.3), c_orange];
		pstart  = phase.sunrise;
		pend    = phase.daytime;
	}
	else if (hours > phase.daytime and hours <= phase.sunset)   // Day
	{
		darks   = [0.2, 0, 0, 0, 0.2];
		//colours = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart  = phase.daytime;
		pend    = phase.sunset;
	}
	else if (hours > phase.sunset and hours <= phase.nighttime) // Sunset
	{
		darks	= [0.2, max_darkness];
		//colours = [c_orange, c_navy, merge_colour(c_black, c_navy, 0.3)];
		pstart  = phase.sunset;
		pend    = phase.nighttime;
	}
	else
	{
		darks	= [max_darkness];
		//colours = [merge_colour(c_black, c_navy, 0.3)];
		pstart  = phase.nighttime;
		pend    = phase.sunrise;
	}
			
	// Alter Darkness And Colours Depending On Time
	// Colours
	//if (pstart == phase.nighttime) { light_colour = colours[0]; }
	//else 
	//	{
	//		var cc = ((hours - pstart) / (pend - pstart)) * (array_length_1d(colours)-1);
	//		var c1 = colours[floor(cc)];
	//		var c2 = colours[ceil(cc)];
		
	//		light_colour = merge_colour(c1, c2, cc-floor(cc));
	//	}
			
	//Darkness
	if (pstart == phase.nighttime) { darkness = darks[0]; }
	else
	{
		var dd = ((hours - pstart) / (pend - pstart)) * (array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
		
		darkness = lerp(d1, d2, dd-floor(dd));	
	}
}


// Day - Cycle Check
if (hours >= 24)
{
	seconds = 0;
	day++;
		
	// Month
	if (day > 30)
	{
		day = 1;
		month++;
				
		//Year
		if (month > 12)
		{
			month = 1;
			year++;
		}
	}
}
