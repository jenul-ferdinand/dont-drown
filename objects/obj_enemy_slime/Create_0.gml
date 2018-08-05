event_inherited();
// Animation
image_speed = 0.1;

// Movement
movespeed = 0.5;

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

/* NOTE !!!!!
	remember to change it so that wood and stone doesnt go into the inventory,
	it just comes up as the amount you have at the bottom of the screen,
	if you have none it is invisible
	
	you could also make it so that the amount of resources shows only when you
	are inside the inventory, insead of just having it up the whole time
	which makes the screen look really clustered
*/