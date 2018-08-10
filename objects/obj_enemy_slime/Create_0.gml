event_inherited();
// Animation
image_speed = 0.1;

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
targetX = 0;
targetY = 0;

// Combat
hp = 100;