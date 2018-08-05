/// @desc scr_enemy_stall_state();

// Wait Until The Alarm Goes Out
if (alarm[1] <= 0)
{
	// Switch To The Idle State
	state = scr_enemy_idle_state;
}