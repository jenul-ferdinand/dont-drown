///scr_weapon();

#region HITBOX

// SET UP THE LOCAL VARIABLES
var first_index = 5;
var last_index = 6; 

// RIGHT ----------------------------------
if (sprite_index == spr_bluey_attack_right)
	{
	if (image_index >= first_index and image_index < last_index) 
		{
		with (instance_create_layer(x, y, "Combat", HIT_RIGHT))
			{
			if (!instance_exists(obj_weapon_animation))
				{
				// CREATE THE WEAPON
				with (instance_create_layer(x, y, "Combat", obj_weapon_animation))
					{
					sprite_index = equipped[0];
					image_angle = 45;
					}
				}
			// STONE
			with (instance_place(x, y, obj_stone))
				{
				if (hit == false)
					{
					hit = true;
					// You Need To Have The Pick Equipped To Do Damage
					if (obj_weapon_animation.equipped[0] == obj_weapon_animation.starter_pick[0])
						{
						hp -= 1;
						}
					else
						{
						hp -= 0;
						}
					}
				else
					{
					hit = false;
					}
				}
			
			// TREE
			with (instance_place(x, y, obj_tree))
				{
				if (hit == false)
					{
					hit = true;
					hp -= 1;
					}
				else
					{
					hit = false;
					}
				}
			}
		}
	}
	
// LEFT ----------------------------------
if (sprite_index == spr_bluey_attack_left)
	{
	if (image_index >= first_index and image_index < last_index)
		{
		with (instance_create_layer(x, y, "Combat", HIT_LEFT))
			{
			if (!instance_exists(obj_weapon_anim_left))
				{
				// CREATE THE WEAPON
				with (instance_create_layer(x, y, "Combat", obj_weapon_anim_left))
					{
					sprite_index = equipped[1];
					image_angle = 45;
					}
				}
				
			// STONE
			with (instance_place(x, y, obj_stone))
				{
				if (hit == false)
					{
					hit = true;
					// You Need To Have The Pick Equipped To Do Damage
					if (obj_weapon_anim_parent.equipped[1] == obj_weapon_anim_parent.starter_pick[1])
						{
						hp -= 1;
						}
					else
						{
						hp -= 0;
						}
					}
				else
					{
					hit = false;
					}
				}
			
			// TREE
			with (instance_place(x, y, obj_tree))
				{
				if (hit == false)
					{
					hit = true;
					hp -= 1;
					}
				else {hit = false;}
				}
			}
		}
	}
	
// DOWN ----------------------------------
if (sprite_index == spr_bluey_attack_down)
	{
	if (image_index >= first_index and image_index < last_index)
		{
		with (instance_create_layer(x, y, "Combat", HIT_DOWN))
			{
			if (!instance_exists(obj_weapon_anim_down))
				{
				// CREATE THE WEAPON
				with (instance_create_layer(x, y, "Combat", obj_weapon_anim_down))
					{
					sprite_index = equipped[2];
					image_angle = 45;
					}
				}
				
			// STONE
			with (instance_place(x, y, obj_stone))
				{
				if (hit == false)
					{
					hit = true;
					// You Need To Have The Pick Equipped To Do Damage
					if (obj_weapon_anim_parent.equipped[2] == obj_weapon_anim_parent.starter_pick[2])
						{
						hp -= 1;
						}
					else
						{
						hp -= 0;
						}
					}
				else
					{
					hit = false;
					}	
				}
			
			// TREE
			with (instance_place(x, y, obj_tree))
				{
				if (hit == false)
					{
					hit = true;
					hp -= 1;
					}
				else
					{
					hit = false;
					}
				}
			}
		}
	}
	
// UP ------------------------------------
if (sprite_index == spr_bluey_attack_up)
	{
	if (image_index >= first_index and image_index < last_index)
		{
		with (instance_create_layer(x, y, "Combat", HIT_UP))
			{
			if (!instance_exists(obj_weapon_anim_up)) 
				{
				// CREATE THE WEAPON
				with (instance_create_layer(x, y, "Combat", obj_weapon_anim_up))
					{
					sprite_index = equipped[3];
					image_angle = 45;
					}
				}
				
			// STONE
			with (instance_place(x, y, obj_stone))
				{
				if (hit == false)
					{
					hit = true;
					// You Need To Have The Pick Equipped To Do Damage
					if (obj_weapon_anim_parent.equipped[3] == obj_weapon_anim_parent.starter_pick[3])
						{
						hp -= 1;
						}
					else
						{
						hp -= 0;
						}
					}
				else
					{
					hit = false;
					}
				}
				
			// TREE
			with (instance_place(x, y, obj_tree))
				{
				if (hit == false)
					{
					hit = true;
					hp -= 1;
					}
				else
					{
					hit = false;
					}
				}
			}
		}
	}
	
#endregion
	

