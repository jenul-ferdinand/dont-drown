if (hp <= 0)
	{
	instance_destroy();
	}
	
if (hit == true)
	{
	hp -= global.stone_damage;
	
	//Hands
	if (instance_exists(obj_hands))
		{
		if (obj_player.weapon == obj_hands)
			{
			global.stone_count++;
			}
		}
	
	//Starter Pick
	if (instance_exists(obj_starter_pick))
		{
		if (obj_player.weapon == obj_starter_pick)
			{
			global.stone_count += 10;
			}
		}
		
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
