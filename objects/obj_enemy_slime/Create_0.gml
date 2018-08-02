event_inherited();
// Animation
image_speed = 0.1;

// Movement
movespeed = 0.5;

// State
state = scr_enemy_chase_state;
// Random Movement
alarm[0] = room_speed*irandom_range(2, 5);

// Sight Range
sight = 64;
// Target
targetx = 0;
targety = 0;