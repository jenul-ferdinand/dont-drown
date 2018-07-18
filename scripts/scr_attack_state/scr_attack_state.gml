///scr_attack_state();

// Animation Speed
image_speed = 2;

if (image_index >= 5 and image_index < 5.4)
{
	if (!instance_exists(weapon))
	{
		with (instance_create_layer(x,y, "Combat", weapon))
		{
			dir = obj_player.face*90;
			image_angle = (obj_player.face*90)+45;
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


// Switch To The Attack Animation Depending On Which Direction We Are Facing
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
	
	switch (sprite_index)
		{
			case spr_player_attack_down:
					xx = x;
					yy = y+16;
				break;
				
			case spr_player_attack_up:
					xx = x;
					yy = y-16;
				break;
			
			case spr_player_attack_right:
					xx = x+16;
					yy = y;
				break;
				
			case spr_player_attack_left:
					xx = x-16;
					yy = y;
				break;
		}
	
		if (obj_player.weapon != 0)
			{
				with (instance_create_layer(xx, yy, "Combat", obj_damage))
					{
						//Tell Us The Creator
						creator = id;
		
						//Stone
						if (obj_player.pick or obj_player.hands)
							{
								with (instance_place(x, y, obj_stone))
									{
										
										if (!hit) 
											{ 
												hit = true; 
											} 
										else 
											{ 
												hit = false; 
											}
									}
							}
			
						//Tree
						if (obj_player.axe or obj_player.hands)
							{
								with (instance_place(x, y, obj_tree))
									{
										if (!hit) 
											{ 
												hit = true; 
											}
										else 
											{ 
												hit = false;
											}
									}
							}
							
						//Chicken
						if (obj_player.weapon != 0)
							{
								with (instance_place(x, y, obj_chicken))
									{
										if (!hit)
											{
												hit = true;	
											}
										else
											{
												hit = false;	
											}
									}
							}
					}
			}
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	