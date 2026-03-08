if(_locked_to_bat)
{
	x = obj_bat.x;
	y = obj_bat.y - 28;

	if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))
	{
		direction = choose(135,90,45);
	
		speed = _move_speed;
	
		_locked_to_bat = false;
	}
}

else
{
	if(global.paused)
	{
		speed = 0;
	}

	else
	{
		speed = _move_speed;
		
		if(y > room_height + 400)
		{
			instance_destroy();
		}
	}
}