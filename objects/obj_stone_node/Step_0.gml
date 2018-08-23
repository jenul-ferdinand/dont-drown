if (hit)
{
	// Sound
	audio_play_sound(snd_stone_hit_1, 97, 0);
	
	// Create The Hit Splash
	instance_create_layer(
		x + random_range(-4, 4), 
		y - random_range(4, 6), 
		"Combat",
		obj_node_splash
	);
}

// If HP <= Zero
if (hp <= 0)
{
	// Destroy The Stone...
	instance_destroy();
}
