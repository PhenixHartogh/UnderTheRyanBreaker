var _random_direction_1 = (random_range(214, 46));
var _random_direction_2 = (random_range(101, 96));

var _random_direction = choose(_random_direction_1, _random_direction_2);

direction = _random_direction;
speed = _move_speed;
_locked_to_bat = false;

var _count = instance_number(obj_ball);

if(_count == 1)
{
	speed = 0;
	
	_locked_to_bat = true;

	if(instance_exists(obj_bat))
	{
		x = obj_bat.x;
		y = obj_bat.y - 28;
	}
}