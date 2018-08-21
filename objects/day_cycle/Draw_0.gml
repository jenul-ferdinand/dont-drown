if (draw_daylight)
{
	
	//// Draw Darkness
	//var c = light_colour;
	//draw_set_alpha(darkness);
	//draw_rectangle_colour(0, 0, room_width, room_height, c,c,c,c, false);
	//draw_set_alpha(1);
	
		
	surface_set_target(day_night_surface);
	draw_clear(c_black); // <-- Change This To (light_colour) if you want pretty lighting
		
	// Draw Glow
	with (obj_player)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite(spr_player_glow, 0, x, y-6);
		gpu_set_blendmode(bm_normal);
	}
	
	with (obj_iron_node)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite(spr_player_glow, 0, x, y-7);
		gpu_set_blendmode(bm_normal);
	}
			
	with (obj_enemy_brawuht)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite(spr_player_glow, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
			
	with (obj_chicken)
	{
		gpu_set_blendmode(bm_subtract);
		draw_sprite(spr_player_glow, 0, x, y-4);
		gpu_set_blendmode(bm_normal);
	}
		
	surface_reset_target();
	draw_surface_ext(day_night_surface, 0, 0, 1, 1, 0, c_white, darkness);	
}
	
	
