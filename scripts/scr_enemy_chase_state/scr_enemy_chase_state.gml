/// @desc scr_enemy_chase_state


// Move towards the player
if (instance_exists(obj_player))
{
	phy_position_x += sign(obj_player.x - x) * movespeed;
	phy_position_y += sign(obj_player.y - y) * movespeed;
}
