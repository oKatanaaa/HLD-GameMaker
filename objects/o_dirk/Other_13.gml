/// @description Attack State
if(!instance_exists(self))
	exit;
	
scr_move_object_to();

if (move_speed_ <= 0)
	state_ = dirk.follow;