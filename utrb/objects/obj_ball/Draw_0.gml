if(!_locked_to_bat)
{
	if(!global.paused)
	{
		array_push(_trail_points, y);
		array_push(_trail_points, x + hspeed);
	
		var _trail_length = array_length(_trail_points);

		if(_trail_length > 40)
		{
			array_delete(_trail_points, 0, 2);
		}
	}
	
	var _trail_length = array_length(_trail_points);

	for(var i = 0; i < _trail_length-1; i += 2) {
		var _trail_x = array_get(_trail_points, i);
		
		var _trail_y = array_get(_trail_points, i+1);

		draw_sprite_ext(spr_ball_final35, 0, _trail_x, _trail_y, 1, 1, 0, c_fuchsia, i/30);
	}
}

draw_self();