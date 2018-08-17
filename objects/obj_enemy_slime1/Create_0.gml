event_inherited();
// Animation
image_speed = 0.1;

// Movement
normal_speed = 1;
movespeed = normal_speed;

// State
state = scr_animal_idle_state;
// Random Movement
alarm[0] = room_speed * irandom_range(2, 5);

// Sight Range
sight = 64;
// Target
targetX = obj_player.x;
targetY = obj_player.y;

// Combat
hp = 100;