if o_player.x != xPrev_ || o_player.y != yPrev_
	_dir = point_direction(xPrev_, yPrev_, o_player.x, o_player.y);
else
	_dir = 1