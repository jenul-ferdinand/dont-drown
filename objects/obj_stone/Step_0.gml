// If HP <= Zero
if (hp <= 0)
{
	#region Hitfrom Switch
	
	switch (hitfrom)
	{
		
		case "Hands":
		{
			// Give us 5 Stone
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			
			global.stone_count += 5;
		}
		break;
		
		
		case "Stone Pick":
		{
			// Give us 8 Stone
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			scr_pickup(4);
			
			global.stone_count += 8;
		}
		break;
	}
	
	#endregion
	
	// Destroy The Stone...
	instance_destroy();
}
	
if (hit == true)
{
	// Remove Hp
	hp -= global.stone_damage;
	
	#region Item Types
	// Hands
	if (instance_exists(obj_hands))
	{
		if (obj_player.weapon == obj_hands)
		{
			hitfrom = "Hands";
		}
	}
	
	// Stone Pick
	if (instance_exists(obj_stone_pick))
	{
		if (obj_player.weapon == obj_stone_pick)
		{
			hitfrom = "Stone Pick";
		}
	}
	
	#endregion	
	
	show_debug_message("StoneHP: " + string(hp));
	audio_play_sound(snd_stone_hit_1, 97, 0);
	wobbling = true;
}

#region Wobble
// has wobbling been initiated?
if wobbling {
    // increase wobble each step
    wobble += wobble_speed;
    }

// has wobbling exceeded the max number of cycles?
if wobble > round(wobble_length) * (pi*2) {
    // stop instance from wobbling
    wobbling = false;
    // reset wobble to zero again
    wobble = 0;
    }

x_offset = sin(wobble) * wobble_intensity;
#endregion
