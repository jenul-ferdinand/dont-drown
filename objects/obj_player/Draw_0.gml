// DRAW THE PLAYER SHADOW -------------------------
if (state == scr_move_state)
	{
		draw_sprite(spr_player_shadow, image_index, x, y-8);
	}
else
	{
		draw_sprite(spr_player_shadow, 0, x, y-8);
		
	}
	

