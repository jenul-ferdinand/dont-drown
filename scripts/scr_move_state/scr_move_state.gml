///scr_move_state();
scr_get_input();

// SWITCH TO ATTACK STATE IF PRESSED ATTACK KEY
if (weapon != 0)
	{
		if (attack_key)
			{
				image_index = 0;
				state = scr_attack_state;
				audio_play_sound(snd_sword_swing_1, 99, 0);
			}
	}

#region MOVEMENT AND COLLISIONS

// Get The Axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Get The Direction
dir = point_direction(0, 0, xaxis, yaxis);

//	Get The Length
if (xaxis == 0 and yaxis == 0)
	{
		len = 0
	}
else
	{
		len = spd;
		scr_get_face();
	}

// Get The Hspd And Vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir); 

// Alter Speed ---------
if (walk_key or run_key)
	{
		spd = abs((walk_key * walk_spd) - (run_key * run_spd));
	}
else
	{
		spd = normal_spd;
	}

// Check For Collisions

#region obj_collision

// HORIZONTAL 
if (hspd != 0) 
	{
	if (place_meeting(x + hspd, y, obj_collision))
		{
			repeat (abs(hspd))
				{
					if (!place_meeting(x + sign(hspd), y, obj_collision))
						{
							x += sign(hspd);
						}
					else
						{
							break;
						}
				}
		hspd = 0;
		}
	}
	
// VERTICAL
if (vspd != 0)
	{
		if (place_meeting(x, y + vspd, obj_collision))
			{
				repeat (abs(vspd))
					{
						if (!place_meeting(x, y + sign(vspd), obj_collision))
							{
								y += sign(vspd);
							}
						else
							{
								break;
							}
					}
				vspd = 0;
			}
	}
	
#endregion


#region obj_water_collision
if (place_meeting(x, y, obj_water_collision))
	{
		image_speed = .75;
		if (len == 0) {image_index = 0;}
		switch (face)
			{
				case RIGHT:
						sprite_index = spr_player_swim_right;
					break;
		
				case LEFT:
						sprite_index = spr_player_swim_left;
					break;
		
				case DOWN:
						sprite_index = spr_player_swim_down;
					break;
		
				case UP:
						sprite_index = spr_player_swim_up;
					break;
			}
	}

#endregion


#region obj_tree

// HORIZONTAL
if (hspd != 0)
	{
		if (place_meeting(x + hspd, y, obj_tree))
			{
				repeat (abs(hspd))
					{
						if (!place_meeting(x + sign(hspd), y, obj_tree))
							{
								x += sign(hspd);
							}
						else
							{
								break;
							}
					}
				hspd = 0;
			}
	}
	
// VERTICAL
if (vspd != 0)
	{
		if (place_meeting(x, y + vspd, obj_tree))
			{
				repeat (abs(vspd))
					{
						if (!place_meeting(x, y + sign(vspd), obj_tree))
							{
								y += sign(vspd);
							}
						else
							{
								break;
							}
					}
				vspd = 0;
			}
	}
	
#endregion


#region obj_stone

// HORIZONTAL
if (hspd != 0)
	{
		if (place_meeting(x + hspd, y, obj_stone))
			{
				repeat (abs(hspd))
					{
						if (!place_meeting(x + sign(hspd), y, obj_stone))
							{
								x += sign(hspd);
							}
						else
							{
								break;
							}
					}
				hspd = 0;
			}
	}
	
// VERTICAL
if (vspd != 0)
	{
		if (place_meeting(x, y + vspd, obj_stone))
			{
				repeat (abs(vspd))
					{
						if (!place_meeting(x, y + sign(vspd), obj_stone))
							{
								y += sign(vspd);
							}
						else
							{
								break;
							}
					}
				vspd = 0;
			}
	}
	
#endregion




// Let The Player Move If It Is Not Colliding
x += hspd; 
y += vspd;

#endregion

// Control The Sprite
image_speed = .75;
if (len == 0) image_index = 0;

switch (face)
	{
		case RIGHT:
				sprite_index = spr_player_right;
			break;
		
		case LEFT:
				sprite_index = spr_player_left;
			break;
		
		case DOWN:
				sprite_index = spr_player_down;
			break;
		
		case UP:
				sprite_index = spr_player_up;
			break;
	}
