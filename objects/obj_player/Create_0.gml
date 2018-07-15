// Movement
hspd = 0;
vspd = 0;
xaxis = 0;
yaxis = 0;
len = 0;
dir = 0;

// Player Movement Speeds
walk_spd = 1;
normal_spd = 2;
run_spd = 3;
spd = normal_spd;

// Start At First Frame
image_speed = 0;

// Which Script To Run First
state = scr_move_state;

// COMBAT
weapon = 0;

// SPRITE CONTROL
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3
face = RIGHT;

// Simple Resources Counting System
global.stone_count = 0;
global.wood_count = 0;

// Create The U.I Object
instance_create_layer(x, y, "Collisions", ui);

// Home Made Colours
#macro c_brown make_colour_rgb(102, 51, 0)






