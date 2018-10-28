
var _x_speed = lengthdir_x(move_speed_, move_direction_);
var _y_speed = lengthdir_y(move_speed_, move_direction_);

if (move_speed_ > 0) {
	if(!place_meeting(x + _x_speed, y, o_solid))
		obj_.x += _x_speed;
	if(!place_meeting(x, y + _y_speed, o_solid))
		obj_.y += _y_speed;
	move_speed_ = scr_approach(move_speed_, 0, friction_);
}