state = scr_animal_idle_state;
phy_fixed_rotation = true;

// Animation
image_speed = 0;

// Random Movement
alarm[0] = room_speed * irandom_range(2, 5);
// Movement
normal_speed = 1;
movespeed = normal_speed;
// Combat
hp = 100;
sight = 64;

targetX = 0;
targetY = 0;
