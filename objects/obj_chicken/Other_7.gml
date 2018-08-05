if ((!place_meeting(x, y, obj_collision) or (!place_meeting(x, y, obj_tree) or (!place_meeting(x, y, obj_stone)))))
{
	//Am i SCARED?
	var fear_obj = instance_nearest(x, y, animal_enemy);

	if (fear_obj != noone)
	{
		if (fear_distance > (distance_to_object(fear_obj)))
		{
			next_state = FEAR;	
		}
	}
	
	//Am i HUNGRY?
	if (next_state != FEAR)
	{
		var food_obj = instance_nearest(x, y, animal_enemy);
		if (food_obj != noone)
		{
			if (food_distance > (distance_to_object(food_obj)))
				{
					next_state = HUNGRY;	
				}
		}
	}

	//Am i TIRED?
	if (next_state != FEAR)
	{
		if (sleepy < sleep_level)
		{
			next_state = SLEEP;
		}
	}

	//Where do i go?
	var target = noone;
	if (next_state == FEAR)
	{
		target = instance_nearest(x, y, animal_enemy)
		target_x = target.x;
		target_y = target.y;
	}
	else if (next_state == HUNGRY)
	{
		target = instance_nearest(x, y, food)
		
		if (target != noone)
		{
			target_x = target.x;
			target_y = target.y;
		}
	}
			
	if (next_state != FEAR and (target == noone or next_state == WANDER))
	{
		target_x = x + irandom_range(-100, 100);
		target_y = y + irandom_range(-100, 100);
	}
	
	if (target_x < x and target_y < y) //left or up
	{
		direction = choose(ANIMAL_LEFT, ANIMAL_UP);
	}
	
	else if (target_x < x and target_y > y) //left or down
	{
		direction = choose(ANIMAL_LEFT, ANIMAL_DOWN);
	}
	
	else if (target_x > x and target_y < y) //right or up
	{
		direction = choose(ANIMAL_RIGHT, ANIMAL_UP);
	}
	
	else if (target_x > x and target_y > y) //right or down
	{
		direction = choose(ANIMAL_RIGHT, ANIMAL_DOWN);
	}
	
	state = next_state;

	//Start THINKING!
	next_state = WANDER;
	//Increase sleepy
	sleep_level += sleepy_rate;
	//Increase hunger
	if (state == FEAR)
	{
		//If scared lose hunger faster
		food_in_belly += hunger_rate * 3;	
	}
	else
	{
		//normal hunger rate
		food_in_belly += hunger_rate;
	}
}
	
	
	
	
	
	
	
	
	
