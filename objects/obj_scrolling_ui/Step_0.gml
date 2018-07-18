if (mouse_wheel_down() or mouse_wheel_up()) {audio_play_sound(snd_blip_select_1, 99, 0);}
if (keyboard_check_pressed(ord("Q"))) {show_gui = !show_gui;}