///scr_attack_state();

// Animation Speed
image_speed = 2;

// Create The Weapon
if (image_index >= 5 and image_index < 5.4)
{
	if (!instance_exists(weapon))
	{
		var inst = instance_create_layer(x, y, "Combat", weapon)
		inst.dir = obj_player.mouseFace * 90;
		inst.image_angle = (obj_player.mouseFace * 90) + 45;
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
	var si = 0;
	/*
	add a local variable here called si (which stands for sprite_index) and add more obj_damage sprites
	for all for directions, to fix the glitch where you can hit resource from the side when u are facing
	up. Use this variable and put it into the sprite_index switch right under this. After you put all
	four directions into the switch scroll down to where we create the damage object and in the brackets
	add (sprite_index = si).
	*/
	
	// Hit Box Direction Properties
	switch (sprite_index)
	{
		// Down
		case spr_player_attack_down:
			xx = x;
			yy = y - 24;
			si = spr_damage_down;
		break;
		
		// Up
		case spr_player_attack_up:
			xx = x;
			yy = y + 12;
			si = spr_damage_up;
		break;
		
		// Right
		case spr_player_attack_right:
			xx = x - 16;
			yy = y - 7;
			si = spr_damage_right;
		break;
		
		// Left
		case spr_player_attack_left:
			xx = x + 16;
			yy = y - 7;
			si = spr_damage_left;
		break;
	}
	
	if (obj_player.weapon != 0)
	{
		// Create The Damage
		with (instance_create_layer(xx, yy, "Combat", obj_damage))
		{
			// Change Sprite According To Direction
			sprite_index = si;
			// Scale
			image_xscale = 1.5;
			image_yscale = 1.5;
			// Shake amounts
			var shake_amount = 4.5;
			
			#region Stone Node
			if (instance_exists(pick_parent) or (instance_exists(obj_hands)))
			{
				with (instance_place(x, y, obj_stone_node))
				{
					// Damage And Item Type Script
					wep_damage_stone_switch();
					
					// Screen Shake
					shake = shake_amount;
					
					// Hit
					if (!hit) {
						hit = true;
					} else {
						hit = false;
					}
				}
			}
			#endregion
			
			#region Iron Node
			if (instance_exists(pick_parent) or (instance_exists(obj_hands)))
			{
				with (instance_place(x, y, obj_iron_node))
				{
					// Damage And Item Type Script
					wep_damage_iron_switch();
					
					// Screen Shake
					shake = shake_amount;
					
					// Hit 
					if (!hit) {hit = true;}
					else {hit = false;}
				}
			}
			#endregion
			
			#region Tree
			if (instance_exists(axe_parent) or (instance_exists(obj_hands)))
			{
				with (instance_place(x, y, obj_tree))
				{
					// Damage And Item Type Script
					wep_damage_tree_switch();
					
					// Screen Shake
					shake = shake_amount;
					
					// Hit
					if (!hit) { hit = true; }
					else { hit = false; }
				}
			}
			#endregion
			
			#region Chicken
			if (obj_player.weapon != 0)
			{
				with (obj_chicken)
				{
					if (place_meeting(x, y, obj_damage))
					{
						// Weapon Damage Type
						wep_damage_chicken_switch();
						
						// Screen Shake
						shake = shake_amount - 3;
					
						// Knockback
						movespeed = -2;
						alarm[1] = 20;
						// Hit Flash
						alarm[2] = 1;
					}
				}
			}
			#endregion
			
			#region Enemies
			// Enemies
			if (obj_player.weapon != 0)
			{		
				with(par_enemy)
				{
					if (place_meeting(x, y, obj_damage))
					{
						// Weapon Damage Type
						wep_damage_brawuht_switch();
						
						// Screen Shake
						shake = shake_amount - 3;
					
						// Knock Back
						movespeed = -1;
						alarm[4] = 20;
						// Hit Flash
						alarm[2] = 1;	
					}
				}
			}
			#endregion
		}
	}
}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	