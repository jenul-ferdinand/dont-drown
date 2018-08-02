/// @desc scr_enemy_wander_state();
scr_check_for_player();

// Move towards the player
phy_position_x += sign(targetX - x) * movespeed;
phy_position_y += sign(targetY - y) * movespeed;