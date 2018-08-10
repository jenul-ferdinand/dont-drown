///scr_move_state();
scr_get_input();

// On The Ground
if (grounded)
{
	// Weapon Equipped
	if (weapon != 0)
	{
		// Inventory Not Open
		if (global.show_inv == false)
		{
			// Attack Key Pressed
			if (attack_key) && (cooldown <= 0)
			{
				cooldown += 100;
				//Play The Audio
				audio_play_sound(snd_sword_swing_1, 99, 0);
				// Reset Image Index
				image_index = 0;
				// Switch States
				state = scr_attack_state;
			}
		}
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
	//scr_get_face();
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

// Mouse Look 4 Directions
mouseFace = (point_direction(x, y, mouse_x, mouse_y)+45) div 90;
// Set The Direction To Equal The Mouse Look
dir = mouseFace;

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
	// Dont Show The Oxygen Bar
	survival.show_oxygen_bar = false;
	
	image_speed = .75;
	if (len == 0) {image_index = 0;}
	switch (mouseFace) 
	{
		case UP: sprite_index=spr_player_up; break;
		case LEFT: sprite_index=spr_player_left; break;
		case DOWN: sprite_index=spr_player_down; break;
		case RIGHT: sprite_index=spr_player_right; break;
	}
}
else
{
	// Show The Oxygen Bar
	survival.show_oxygen_bar = true;
	
	image_speed = .75;
	if (len == 0) {image_index = 0;}
	switch (mouseFace) 
	{
		case UP: sprite_index=spr_player_swim_up; break;
		case LEFT: sprite_index=spr_player_swim_left; break;
		case DOWN: sprite_index=spr_player_swim_down; break;
		case RIGHT: sprite_index=spr_player_swim_right; break;
	}
}
















