event_inherited();
image_xscale = 1;
image_yscale = image_xscale;

// Movement
hspd = 0;
vspd = 0;
xaxis = 0;
yaxis = 0;
len = 0;
dir = 0;

// Player Movement Speeds
normal_spd = 2;
spd = normal_spd;
grounded = false;

// Start At First Frame
image_speed = 0;

// Which Script To Run First
state = scr_move_state;

// Combat
weapon = 0;
mouseFace = 0;
cooldown = 0;
cooldownRate = 0;
// Health
maxhp = 6;
hp = maxhp;

face = RIGHT;

// Home Made Colours
#macro c_brown make_colour_rgb(102, 51, 0)
#macro c_magenta make_colour_rgb(255,0,255)
#macro c_dark_magenta make_colour_rgb(139,0,139)

// Create The Intro Speech
instance_create_layer(x, y, "META", tex_intro);

// Sound Management
hostile_lifeform_alerted_sndcheck = false;







