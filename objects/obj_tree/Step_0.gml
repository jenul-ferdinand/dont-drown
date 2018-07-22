if (hp <= 0)
{
	instance_destroy();
}

// If Hit
if (hit == true)
{
	// Remove Hp
	hp -= global.tree_damage;
	
	// Hands
	if (instance_exists(obj_hands))
	{
		if (obj_player.weapon == obj_hands)
		{
			global.wood_count++;
			scr_pickup(3);
		}
	}
		
	// Stone Axe
	if (instance_exists(obj_stone_axe))
	{
		if (obj_player.weapon == obj_stone_axe)
		{
			global.wood_count += 2;
			scr_pickup(3);
			scr_pickup(3);
		}
	}
	
	show_debug_message("TreeHP: " + string(hp));
	audio_play_sound(snd_wood_hit_1, 98, 0);
}

// Become transparent if the player is behind you
if (collision_circle(x, y-68, 32, obj_player, true, true))
{
	if (obj_player.state == scr_attack_state)
	{
		image_alpha = 1;
	}
	else
	{
		image_alpha = .25;
	}
}
else
{
	image_alpha = 1;	
}

	