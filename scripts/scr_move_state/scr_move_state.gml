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

// Let The Player Move If It Is Not Colliding
phy_position_x += hspd; 
phy_position_y += vspd;

#endregion

// Check For Ground Tile Collision
if (tilemap_get_at_pixel(layer_tilemap_get_id("Island"), x, y)) 
{
	grounded = true;
} 
else
{
	grounded = false;	
}

if (grounded)
{
	// Delete The Oxygen Bar
	survival.show_oxygen_bar = false;
	
	// Control The Sprite
	image_speed = .75;
	if (len == 0) {image_index = 0};

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
			
		
}
else
{
	// Show The Oxygen Bar
	survival.show_oxygen_bar = true;
	
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
















