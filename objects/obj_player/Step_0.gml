event_inherited();
// Attack Cooldown Script
wep_attack_cooldown();
// Run State
script_execute(state);
// Death
if (hp <= 0) {
	game_restart();
}

// Check For Ground Tile Collision
if (tilemap_get_at_pixel(layer_tilemap_get_id("Island"), x, y)) { 
	grounded = true; 
} else { 
	grounded = false; 
}

if (par_enemy.state == scr_enemy_chase_state)
{
	if (hostile_lifeform_alerted_sndcheck == false)
	{
		audio_play_sound(spch_hostile_lifeform_alerted, 50, 0);
		hostile_lifeform_alerted_sndcheck = true;
	}	
}
else
{
	hostile_lifeform_alerted_sndcheck = false;	
}
