///scr_attack_state();

// Animation Speed
image_speed = 2;

if (image_index >= 5 and image_index < 5.4)
{
	if (!instance_exists(weapon))
	{
		with (instance_create_layer(x,y, "Combat", weapon))
		{
			dir = obj_player.mouseFace*90;
			image_angle = (obj_player.mouseFace*90)+45;
			//As soon as the weapon is created change the mask index of obj_pine_tree
			with (obj_tree)
			{
				if (instance_exists(obj_player.weapon))
				{
					mask_index = spr_pine_tree_collision;	
				}
			}
		}			
	}
}


//Switch To The Attack Animation Depending On Which Direction We Are Facing
switch (sprite_index)
{
	case spr_player_down:
		sprite_index = spr_player_attack_down;
	break;
		
	case spr_player_up:
		sprite_index = spr_player_attack_up;
	break;
		
	case spr_player_right:
		sprite_index = spr_player_attack_right;
	break;
		
	case spr_player_left:
		sprite_index = spr_player_attack_left;
	break;
}


// Hitbox
var first_index = 5;
var last_index = 6;

if (image_index >= first_index and image_index < last_index)
{
	var xx = 0;
	var yy = 0;
	
	// Change Where The Hitbox Is Depending On Where The Player Is Facing
	switch (sprite_index)
	{
		// Down
		case spr_player_attack_down:
			xx = x;
			yy = y + 10;
		break;
		
		// Up
		case spr_player_attack_up:
			xx = x;
			yy = y - 19;
		break;
		
		// Right
		case spr_player_attack_right:
			xx = x + 13;
			yy = y - 7;
		break;
		
		// Left
		case spr_player_attack_left:
			xx = x - 13;
			yy = y - 7;
		break;
	}
	
	if (obj_player.weapon != 0)
	{
		// Create The Damage
		with (instance_create_layer(xx, yy, "Combat", obj_damage))
		{
			#region Stone Node
			if (pick_parent || obj_hands)
			{
				with (instance_place(x, y, obj_stone_node))
				{
					// Damage And Item Type Script
					wep_damage_stone_switch();
					
					// Hit
					if (!hit) {	hit = true; }
					else { hit = false; }
				}
			}
			#endregion
			
			#region Iron Node
			if (pick_parent || obj_hands)
			{
				with (instance_place(x, y, obj_iron_node))
				{
					// Damage And Item Type Script
					wep_damage_iron_switch();
					
					// Hit 
					if (!hit) { hit = true; }
					else { hit = false; } 
				}
			}
			#endregion
			
			#region Tree
			if (axe_parent || obj_hands)
			{
				with (instance_place(x, y, obj_tree))
				{
					// Damage And Item Type Script
					wep_damage_tree_switch();
					
					// Hit
					if (!hit) { hit = true; } 
					else { hit = false; }
				}
			}
			#endregion
			
			#region Chicken
			if (obj_player.weapon != 0)
			{
				with (instance_place(x, y, obj_chicken))
				{
					// Weapon Damage Type
					wep_damage_chicken_switch();
					
					show_debug_message("ChickenHP: " + string(hp));
				}
			}
			#endregion
			
			#region Slime
			// Slime
			if (obj_player.weapon != 0)
			{		
				with(obj_enemy_slime)
				{
					if (place_meeting(x, y, obj_damage))
					{
						// Weapon Damage Type
						wep_damage_slime_switch();
					
						// Knock Back
						movespeed = -1;
						alarm[4] = 20;
						
						// Debug
						// show_debug_message("SlimeHP: " + string(hp));
						
						// Hit Flash
						alarm[2] = 1;	
					}
				}
			}
			#endregion
		}
	}
}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	