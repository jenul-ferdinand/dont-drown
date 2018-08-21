text = "";
page = 0;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

x_buffer = 10;
y_buffer = 10;

box_height = sprite_get_height(spr_box);
box_width = sprite_get_width(spr_box);
str_height = string_height("M");

draw_x = (view_wport[0] / 2) - 60;
draw_y = 500;
char_count = 0;

creator = noone;
name = noone;

