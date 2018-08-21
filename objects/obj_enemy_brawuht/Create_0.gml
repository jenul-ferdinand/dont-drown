event_inherited();
// Animation
image_speed = 0;
ispd = 1.5;
twod = true;

// Movement
normal_speed = 1;
movespeed = normal_speed;

// State
state = scr_enemy_idle_state;
// Random Movement
alarm[0] = room_speed * irandom_range(2, 5);

// Sight Range
sight = 64;

// Target
x_axis = 0;
y_axis = 0;

// Combat
hp = 100;