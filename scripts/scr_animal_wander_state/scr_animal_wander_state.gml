/// @desc scr_animal_wander_state();
scr_animal_check_for_player();

// Get Length And Direction
var dir = point_direction(x, y, targetX, targetY);
var hspd = lengthdir_x(movespeed/4, dir);
var vspd = lengthdir_y(movespeed/4, dir);
// Move Towards The Player
phy_position_x += hspd;
phy_position_y += vspd;
image_speed = 2;

if (hspd < 0) { image_xscale = -1 }
if (hspd > 0) { image_xscale =  1 } 