// If Hit
if (hit == true)
{
	// Item Type Amount Receival
	wep_tree_amount_switch();
	
	// Play Sound
	audio_play_sound(snd_wood_hit_1, 98, 0);
}

// If HP Is <= Zero
if (hp <= 0)
{
	
	// Destroy The Tree...
	instance_destroy();
}

// Become transparent if the player is behind you
if (collision_circle(x, y-68, 32, obj_player, true, true))
{ image_alpha = .25; }
// Return Back To Normal
else {image_alpha = 1;}















	