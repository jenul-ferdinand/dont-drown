event_inherited();
if (!(instance_exists(obj_player))) exit;
script_execute(state);

var dis = point_distance(x, y, obj_player.x, obj_player.y);
if (dis > 2126) {
	instance_destroy();	
}

// Combat
if (hp <= 0) {
	instance_destroy();
}

if (hp < maxhp) 
{
	hbar_activate = true;
} else { hbar_activate = false; }

if (place_meeting(x, y, obj_player)) {
	obj_player.hp -= 1;
	obj_player.image_blend = c_red;
} else {
	obj_player.image_blend = c_white;	
}


