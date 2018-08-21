/// @desc scr_enemy_choose_next_state();
if (alarm[0] <= 0) 
{
	if (instance_exists(obj_player)) 
	{
		state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
		alarm[0] = room_speed * irandom_range(2, 4);
		
		if (state == scr_enemy_wander_state) 
		{
			// Get An Axis
			x_axis = random_range(-1, 1);
			y_axis = random_range(-1, 1);
		}
	}
}








