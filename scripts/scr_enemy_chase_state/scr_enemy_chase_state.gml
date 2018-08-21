/// @desc scr_enemy_chase_state()
scr_check_for_player();
if (!instance_exists(obj_player)) exit;

// Get Length And Direction
var dir = point_direction(0, 0, x_axis, y_axis);
var hspd = lengthdir_x(movespeed, dir);
var vspd = lengthdir_y(movespeed, dir);
// Animation And Sprite Control
if (hspd != 0) and (twod == true) 
{
	image_xscale = sign(hspd);
	image_speed = ispd;
}
scr_get_face(dir);
movement = MOVE;
// Move Towards The Player
phy_position_x += hspd;
phy_position_y += vspd;
