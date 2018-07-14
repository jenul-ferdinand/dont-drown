var m_rate = 0;

if (state == FEAR)
	{
		m_rate = run_rate;	
	}
else if (state == WANDER)
	{
		m_rate = move_rate;	
	}

if (direction == ANIMAL_RIGHT)
	{
		x += m_rate;
		image_xscale = 1;
	}
else if (direction == ANIMAL_LEFT)
	{
		x -= m_rate;
		image_xscale = -1;
	}
else if (direction == ANIMAL_UP)
	{
		y -= m_rate;	
	}
else if (direction == ANIMAL_DOWN)
	{
		y += m_rate;	
	}
	
//Combat
if (hp <= 0)
	{
		instance_change(obj_meat, true);
	}
	
if (hit == true)
	{
		hp -= global.chicken_damage;
		show_debug_message("ChickenHP: " + string(hp));
	}

