/// @desc scr_enemy_chase_state()
scr_check_for_player();

// Get Length And Direction
var dir = point_direction(x, y, targetX, targetY);
var hspd = lengthdir_x(movespeed, dir);
var vspd = lengthdir_y(movespeed, dir);
// Move Towards The Player
phy_position_x += hspd;
phy_position_y += vspd;