/// @desc scr_enemy_choose_next_state();
if (alarm[0] <= 0)
{
	state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
	alarm[0] = room_speed * irandom_range(2, 4);
	
	// Random Point In The Room To Move To
	targetX = random(room_width);
	targetY = random(room_height);

}








