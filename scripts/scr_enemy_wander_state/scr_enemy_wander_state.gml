/// @desc scr_enemy_wander_state();
scr_check_for_player();

// Get Length And Direction
var dir = point_direction(0, 0, x_axis, y_axis);
var hspd = lengthdir_x(movespeed / 4, dir);
var vspd = lengthdir_y(movespeed / 4, dir);
// Animation And Sprite Control
if (hspd != 0) and (twod == true) 
{
	image_xscale = sign(hspd);
	image_speed = ispd / 4;
}
scr_get_face(dir);
movement = MOVE;
// Move Towards The Player
phy_position_x += hspd;
phy_position_y += vspd;
