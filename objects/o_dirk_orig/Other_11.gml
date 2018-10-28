/// @description Follow state
if(!instance_exists(o_player)) 
	exit;
	
image_speed = 0.7;

//RANDOM MOVING
if(alarm[2] > 0) {
	//set necessary values
	direction_to_player_ = point_direction(x, y, o_player.x, o_player.y);
	rand_result_dir_ = current_direction_ + rand_degree_ * sign_;
	//normalize degree value to 0 - 360 degrees
	if(rand_result_dir_ > 360)
		rand_result_dir_ -= 360;
		
	
	var _x_speed = lengthdir_x(speed_, rand_result_dir_);
	var _y_speed = lengthdir_y(speed_, rand_result_dir_);
	
	if(abs(direction_to_player_ - rand_result_dir_) > 80)
		sprite_index = s_dirk_fall_back;
	else
		sprite_index = s_dirk_move;
	
	//move
	if(!place_meeting(x + _x_speed, y, o_solid))
		x += _x_speed;
	if(!place_meeting(x, y + _y_speed, o_solid))
		y += _y_speed;
		
} 


//PATH BASED MOVING
if(alarm[4] > 0) {
	sprite_index = s_dirk_move;
	//center player's coordinates
	var _playerx = (o_player.x div 16) * 16 + 8;
	var _playery = (o_player.y div 16) * 16 + 8;
	
	if (mp_grid_path(global.grid, path_, x, y, _playerx, _playery, 1))
		path_start(path_, speed_, path_action_stop, false);		
}



//CHANGE FOLLOW STATE TO PREPARE STATE
if (point_distance(x,y,o_player.x,o_player.y) <= attack_range_ && !collision_line(x, y, o_player.x, o_player.y, o_solid, 0, 0)) {
	state_ = dirk.prepare;
	alarm[1] = global.one_second/1.5;
	path_end();
	
	image_index = 0;
	sprite_index = s_dirk_prepare;
}