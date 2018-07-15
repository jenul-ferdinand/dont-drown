// Time - By Friendly Cosmonaut
seconds = 0;
minutes = 0;
hours   = 0;

day     = 1;
month  = 1;
year    = 1;

// Seconds Per-Step
time_increment = 15;

// Pausing
time_pause = false;

// Lighting
max_darkness = 0.85;
darkness = 0;
light_colour = c_black;
draw_daylight = false;

// Create The Surface
day_night_surface = surface_create(room_width, room_height);

// GUI
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

enum phase 
	{
		sunrise   = 6,
		daytime	  = 8.5,
		sunset    = 18,
		nighttime = 22,
	}

