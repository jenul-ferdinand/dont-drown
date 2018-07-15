// DRAW THE PLAYER SHADOW -------------------------
if (state == scr_move_state)
	{
		draw_sprite(spr_bluey_shadow, image_index, x, y-8);
		
	}
else
	{
		draw_sprite(spr_bluey_shadow, 0, x, y-8);
		
	}

