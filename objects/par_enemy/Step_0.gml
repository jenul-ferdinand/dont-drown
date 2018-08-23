// "hostile lifeform alerted" Speech
if (state == scr_enemy_chase_state)
{
	if (hostile_lifeform_alerted_sndcheck == false)
	{
		if (!audio_is_playing(spch_hostile_lifeform_alerted))
		{
			audio_play_sound(spch_hostile_lifeform_alerted, 50, 0);
		}
		hostile_lifeform_alerted_sndcheck = true;
	}
}
else
{
	hostile_lifeform_alerted_sndcheck = false;	
}