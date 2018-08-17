event_inherited();
if (!(instance_exists(obj_player))) exit;
script_execute(state);

var dis = point_distance(x, y, obj_player.x, obj_player.y);
if (dis > 516) {
	instance_destroy();	
}

// Combat
if (hp <= 0) {
	instance_destroy();
}

if (place_meeting(x, y, obj_player)) {
	global.player_hp -= 1;
	obj_player.image_blend = c_red;
}
else {
	obj_player.image_blend = c_white;	
}


