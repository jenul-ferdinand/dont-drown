// Inherit the parent event
event_inherited();

// Draw Healthbar
if (hbar_activate == true)
{
	draw_healthbar
	(
		x - 9, y - 19, x + 9, y - 18, 
		hp / 2, 
		c_black, c_red, c_green, 
		0, 
		true, true
	); 
}

// Draw The Shadow
draw_sprite(spr_player_shadow, image_index, x, y - 8);


