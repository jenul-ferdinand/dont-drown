// If HP Is <= Zero
if (hp <= 0)
{
	#region Hitfrom Switch
	switch (hitfrom)
	{
		case "Hands":
		{
			// Give us 5 Wood
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			
			global.wood_count += 5;
		} 
		break;
		
		case "Stone Axe":
		{
			// Give us 8 Wood
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			scr_pickup(3);
			
			global.wood_count += 8;
		} 
		break;
	}
	#endregion
	
	// Destroy The Tree...
	instance_destroy();
	
	
}

// If Hit
if (hit == true)
{
	// Remove Hp
	hp -= global.tree_damage;
	
	#region Item Types
	// Hands
	if (instance_exists(obj_hands))
	{
		if (obj_player.weapon == obj_hands) 
		{
			hitfrom = "Hands";
		}
	}
		
	// Stone Axe
	if (instance_exists(obj_stone_axe))
	{
		if (obj_player.weapon == obj_stone_axe) 
		{
			hitfrom = "Stone Axe";
		}
	}
	#endregion 
	
	show_debug_message("TreeHP: " + string(hp));
	audio_play_sound(snd_wood_hit_1, 98, 0);
}


// Become transparent if the player is behind you
if (collision_circle(x, y-68, 32, obj_player, true, true))
{
	if (obj_player.state == scr_attack_state) {image_alpha = 1;}
	else {image_alpha = .25;}
}	else {image_alpha = 1;}















	