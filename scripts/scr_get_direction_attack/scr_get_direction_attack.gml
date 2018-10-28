var _direction = round(point_direction(x,y,mouse_x,mouse_y)/90);

if (_direction == 4)
	_direction = 0;
	
return _direction;