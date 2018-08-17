/// @desc scr_animal_choose_next_state()

if (alarm[0] <= 0)
{
	// Choose
	state = choose(scr_animal_wander_state, scr_animal_idle_state);
	alarm[0] = room_speed * irandom_range(2, 5);
	
	// Random Point In The Room To Move To
	targetX = random(room_width);
	targetY = random(room_height);
}