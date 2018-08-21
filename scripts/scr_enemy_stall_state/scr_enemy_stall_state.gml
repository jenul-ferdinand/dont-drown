/// @desc scr_enemy_stall_state();
movement = IDLE;
// Wait Until The Alarm Goes Out
if (alarm[1] <= 0)
{
	if (instance_exists(obj_player))
	{
		// Switch To The Idle State
		state = scr_enemy_idle_state;
	}
}