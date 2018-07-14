var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

switch (mode)
	{
		case cam_mode.follow_object:
			if (!instance_exists(following)) break;
			cx = following.x - (view_w/2);
			cy = following.y - (view_h/2);
		break;
			
		case cam_mode.follow_mouse_peek:
			cx = lerp(following.x, mouse_x, 0.2) - (view_w/2);
			cy = lerp(following.y, mouse_y, 0.2) - (view_h/2);
		break;
			
		case cam_mode.move_to_follow_object:
			if (!instance_exists(following)) break;
			cx = lerp(cx, following.x - (view_w/2), 0.1);
			cy = lerp(cy, following.y - (view_h/2), 0.1);
			
			if (point_distance(cx, cy, following.x - (view_w/2), following.y - (view_h/2)) < 1)
				{
					mode = cam_mode.follow_object;
				}
		break;
		
	}

camera_set_view_pos(view_camera[0], cx, cy);