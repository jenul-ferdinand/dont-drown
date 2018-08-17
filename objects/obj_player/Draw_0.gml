// Draw The Player Shadow
if (state == scr_move_state)
{
	draw_sprite(spr_player_shadow, image_index, x, y-8);
}
else 
{
	draw_sprite(spr_player_shadow, 0, x, y-8);
}

// Check For Ground Tile Collision
if (tilemap_get_at_pixel(layer_tilemap_get_id("Island"), x, y)) 
{ 
	grounded = true; 
}
else 
{ 
	grounded = false; 
}

