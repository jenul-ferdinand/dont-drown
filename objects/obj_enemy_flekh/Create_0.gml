event_inherited();
// Animation
image_speed = 0.5;

// Other
hbar_activate = false;

// Movement
normal_speed = 1.5;
movespeed = normal_speed;

// State
state = scr_enemy_idle_state;
// Random Movement
alarm[0] = room_speed * irandom_range(2, 5);

// Sight Range
sight = 64;

// Target
x_axis = 0;
y_axis = 0;

// Combat
maxhp = 150;
hp = maxhp;

// Sprite Control
movement  = IDLE;
face = RIGHT;
twod = false;
// Move
sprite[RIGHT, MOVE] = spr_flekh_right_run;
sprite[UP, MOVE] = spr_flekh_up_run;
sprite[LEFT, MOVE] = spr_flekh_left_run;
sprite[DOWN, MOVE] = spr_flekh_down_run;
// Attack
sprite[RIGHT, ATTACK] = spr_flekh_right_run;
sprite[UP, ATTACK] = spr_flekh_up_run;
sprite[LEFT, ATTACK] = spr_flekh_left_run;
sprite[DOWN, ATTACK] = spr_flekh_down_run;
// Idle
sprite[RIGHT, IDLE] = spr_flekh_right_idle;
sprite[UP, IDLE] = spr_flekh_up_idle;
sprite[LEFT, IDLE] = spr_flekh_left_idle;
sprite[DOWN, IDLE] = spr_flekh_down_idle;



