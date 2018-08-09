if (hit == true)
{
	audio_play_sound(snd_stone_hit_1, 97, 0);
	wobbling = true;
}

// If HP <= Zero
if (hp <= 0)
{
	// Destroy The Stone...
	instance_destroy();
}

#region Wobble
// has wobbling been initiated?
if wobbling 
{
	// increase wobble each step
	wobble += wobble_speed;
}

// has wobbling exceeded the max number of cycles?
if wobble > round(wobble_length) * (pi*2) 
{
	// stop instance from wobbling
	wobbling = false;
	// reset wobble to zero again
	wobble = 0;
}

x_offset = sin(wobble) * wobble_intensity;
#endregion
