//This script was made by talent lost

var mx= device_mouse_x_to_gui(0);
var my= device_mouse_y_to_gui(0);
var UI= ui;
image_index = 0;

if (mouse_check_button_pressed(mb_left))
{
	if (UI.slot_selected==noone)
		{
			if (mx>=640/2-35*2-16 && mx<=640/2-35*2+16) 
			{
				UI.slot_1_selected=true;
				UI.slot_selected=UI.slot_1;
			}
			else if (mx>=640/2-35-16 && mx<=640/2-35+16) 
			{
				UI.slot_2_selected=true;
				UI.slot_selected=UI.slot_2;
			}
			else if (mx>=640/2-16 && mx<=640/2+16) 
			{
				UI.slot_3_selected=true;
				UI.slot_selected=UI.slot_3;
			}
			else if (mx>=640/2+35-16 && mx<=640/2+35+16) 
			{
				UI.slot_4_selected=true;
				UI.slot_selected=UI.slot_4;
			}
			else if (mx>=640/2+35*2-16 && mx<=640/2+35*2+16) 
			{
				UI.slot_5_selected=true;
				UI.slot_selected=UI.slot_5;
			}
		}
	else
	{
		if (mx>=640/2-35*2-16 && mx<=640/2-35*2+16) 
		{
			if (UI.slot_1_selected==true)
			{
				UI.slot_1_selected=false;
			}
			else if (UI.slot_2_selected==true)
			{
				UI.slot_2=UI.slot_1;
				UI.slot_1=UI.slot_selected;
			}
			else if (UI.slot_3_selected==true)
			{
				UI.slot_3=UI.slot_1;
				UI.slot_1=UI.slot_selected;
			}
			else if (UI.slot_4_selected==true)
			{
				UI.slot_4=UI.slot_1;
				UI.slot_1=UI.slot_selected;
			}
			else if (UI.slot_5_selected==true)
			{
				UI.slot_5=UI.slot_1;
				UI.slot_1=UI.slot_selected;
			}
			UI.slot_1_selected=false;
			UI.slot_2_selected=false;
			UI.slot_3_selected=false;
			UI.slot_4_selected=false;
			UI.slot_5_selected=false;
			UI.slot_selected=noone;
		}
		else if (mx>=640/2-35-16 && mx<=640/2-35+16) 
		{
			if (UI.slot_1_selected==true)
			{
				UI.slot_1=UI.slot_2;
				UI.slot_2=UI.slot_selected;
			}
			else if (UI.slot_2_selected==true)
			{
				UI.slot_2_selected=false;
			}
			else if (UI.slot_3_selected==true)
			{
				UI.slot_3=UI.slot_2;
				UI.slot_2=UI.slot_selected;
			}
			else if (UI.slot_4_selected==true)
			{
				UI.slot_4=UI.slot_2;
				UI.slot_2=UI.slot_selected;
			}
			else if (UI.slot_5_selected==true)
			{
				UI.slot_5=UI.slot_2;
				UI.slot_2=UI.slot_selected;
			}
			UI.slot_1_selected=false;
			UI.slot_2_selected=false;
			UI.slot_3_selected=false;
			UI.slot_4_selected=false;
			UI.slot_5_selected=false;
			UI.slot_selected=noone;
		}
		else if (mx>=640/2-16 && mx<=640/2+16) 
		{
			if (UI.slot_1_selected==true)
			{
				UI.slot_1=UI.slot_3;
				UI.slot_3=UI.slot_selected;
			}
			else if (UI.slot_2_selected==true)
			{
				UI.slot_2=UI.slot_3;
				UI.slot_3=UI.slot_selected;
			}
			else if (UI.slot_3_selected==true)
			{
				UI.slot_3_selected=false;
			}
			else if (UI.slot_4_selected==true)
			{
				UI.slot_4=UI.slot_3;
				UI.slot_3=UI.slot_selected;
			}
			else if (UI.slot_5_selected==true)
			{
				UI.slot_5=UI.slot_3;
				UI.slot_3=UI.slot_selected;
			}
			UI.slot_1_selected=false;
			UI.slot_2_selected=false;
			UI.slot_3_selected=false;
			UI.slot_4_selected=false;
			UI.slot_5_selected=false;
			UI.slot_selected=noone;
		}
		else if (mx>=640/2+35-16 && mx<=640/2+35+16) 
		{
			if (UI.slot_1_selected==true)
			{
				UI.slot_1=UI.slot_4;
				UI.slot_4=UI.slot_selected;
			}
			else if (UI.slot_2_selected==true)
			{
				UI.slot_2=UI.slot_4;
				UI.slot_4=UI.slot_selected;
			}
			else if (UI.slot_3_selected==true)
			{
				UI.slot_3=UI.slot_4;
				UI.slot_4=UI.slot_selected;
			}
			else if (UI.slot_4_selected==true)
			{
				UI.slot_4_selected=false;
			}
			else if (UI.slot_5_selected==true)
			{
				UI.slot_5=UI.slot_4;
				UI.slot_4=UI.slot_selected;
			}
			UI.slot_1_selected=false;
			UI.slot_2_selected=false;
			UI.slot_3_selected=false;
			UI.slot_4_selected=false;
			UI.slot_5_selected=false;
			UI.slot_selected=noone;
		}
		else if (mx>=640/2+35*2-16 && mx<=640/2+35*2+16) 
		{
			if (UI.slot_1_selected==true)
			{
				UI.slot_1=UI.slot_5;
				UI.slot_5=UI.slot_selected;
			}
			else if (UI.slot_2_selected==true)
			{
				UI.slot_2=UI.slot_5;
				UI.slot_5=UI.slot_selected;
			}
			else if (UI.slot_3_selected==true)
			{
				UI.slot_3=UI.slot_5;
				UI.slot_5=UI.slot_selected;
			}
			else if (UI.slot_4_selected==true)
			{
				UI.slot_4=UI.slot_5;
				UI.slot_5=UI.slot_selected;
			}
			else if (UI.slot_5_selected==true)
			{
				UI.slot_5_selected=false;
			}
			UI.slot_1_selected=false;
			UI.slot_2_selected=false;
			UI.slot_3_selected=false;
			UI.slot_4_selected=false;
			UI.slot_5_selected=false;
			UI.slot_selected=noone;
		}
	}
}

if (my<360-32)
{
	if (UI.slot_selected==noone) {obj_player.state = scr_move_state;}
}


