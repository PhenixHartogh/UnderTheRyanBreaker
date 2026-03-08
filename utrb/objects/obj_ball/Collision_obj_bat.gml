if(!_locked_to_bat)
{
	if(vspeed > 0)
	{
		vspeed = -vspeed;

		hspeed += (x - other.x) / 10;

		direction = clamp(direction, 15, 165);

		speed = 5;

		if(!_locked_to_bat)
		{
			instance_create_layer(x, other.y - 48, "Effects", obj_hit_1);
	
			audio_play_sound(sfx_bathit, 0, false);
		}
	}

}