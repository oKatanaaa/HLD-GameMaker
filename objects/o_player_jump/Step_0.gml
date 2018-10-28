if (not instance_exists(self))
	exit;

if (allowed_to_move_ == true)
	scr_move_object_to();
if(move_speed_ <= 0)
	instance_destroy();