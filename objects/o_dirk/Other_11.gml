/// @description Follow State
if(!instance_exists(o_player)) 
	exit;




if(!pathmoving_) {
	var _direction = point_direction(x,y,o_player.x,o_player.y);
	var _x_speed = lengthdir_x(speed_, _direction);
	var _y_speed = lengthdir_y(speed_, _direction);

	x += _x_speed;
	y += _y_speed;


	if (point_distance(x,y,o_player.x,o_player.y) <= attack_range_) {
		state_ = dirk.prepare;
		alarm[1] = global.one_second/1.5;
	}
}

/// New path moving
if(pathmoving_) {
	var _playerx = (o_player.x div 16) * 16 + 8;
	var _playery = (o_player.y div 16) * 16 + 8;

	if (mp_grid_path(global.grid, path_, x, y, _playerx, _playery, 1)) {
		path_start(path_, speed_, path_action_stop, 0);	
	}



	if (point_distance(x,y,o_player.x,o_player.y) <= attack_range_ && !collision_line(x, y, o_player.x, o_player.y, o_solid, 0, 0)) {
		state_ = dirk.prepare;
		alarm[1] = global.one_second/1.5;
		path_end();
	}
}