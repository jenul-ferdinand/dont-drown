/// @desc scr_enemy_wander_state();
scr_check_for_player();

// Get Length And Direction
var dir = point_direction(x, y, targetX, targetY);
var hspd = lengthdir_x(movespeed/4, dir);
var vspd = lengthdir_y(movespeed/4, dir);
// Move Towards The Player
phy_position_x += hspd;
phy_position_y += vspd;