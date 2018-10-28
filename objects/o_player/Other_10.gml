/// @description Move State
var _x_input = global.D_key - global.A_key;
var _y_input = global.S_key - global.W_key;
var _direction_degree = point_direction(0,0,_x_input, _y_input);	
//direction where we go now

var _x_speed = lengthdir_x(speed_, _direction_degree);				//get necessary y and x speed values
var _y_speed = lengthdir_y(speed_, _direction_degree);

if (_x_input == 0 and _y_input == 0) {								//player stay
	speed_ = 0.2;
	sprite_index = start_sprite_[direction_facing_]
	image_speed = 0;
	image_index = 0;
}


if (_x_input != 0 or _y_input != 0) {								//player moves
	
	speed_ = min(speed_ + acceleration_, max_speed_);
		
	//check move direction to change sprite
	direction_facing_ = scr_get_direction_facing(_x_input, _y_input);
	
	image_speed = 1;
	if(_x_input == -1)
		image_xscale = -1;
	else
		image_xscale = 1;
		
	if(!place_meeting(x+_x_speed, y, o_solid))
		x += _x_speed;
	//else 
	//	while(!place_meeting(x+sign(_x_speed), y, o_solid))
	//		x += sign(_x_speed);
			
	if(!place_meeting(x, y+ _y_speed, o_solid))
		y += _y_speed;
	//else 
	//	while(!place_meeting(x, y + sign(_y_speed), o_solid))
	//		x += sign(_y_speed);
		
}

if(speed_ <= walk_speed_) {
	sprite_index = start_sprite_[direction_facing_]
}

if(speed_ > walk_speed_) {
	sprite_index = sprite_[player.move, direction_facing_]
}

if (keyboard_check_pressed(vk_space)) {								//expression to jump
	direction_clone_move_ = point_direction(x,y,mouse_x,mouse_y);
	scr_set_move_values(self, direction_clone_move_, 6, 0.3);
	previous_x_ = x;												//coordinates where clones will spawn
	previous_y_ = y;
	clone_count_ = 0;												//current clone count
	state_ = player.jump;											//change state to run user event 1
}

if (mouse_check_button_pressed(mb_left)) {
	state_ = player.attack;
	direction_attack_ = scr_get_direction_attack();
	direction_facing_ = direction_attack_;
	scr_set_move_values(self, direction_attack_ * 90, 1,0.1);
	if(direction_facing_ == dir.left)
		image_xscale = -1;
	else
		image_xscale = 1;
	image_speed = 1;
	image_index = 0;
}