if !instance_exists(self)
	exit;

event_user(state_);
if(state_ != player.move)
	sprite_index = sprite_[state_,direction_facing_];
	
	
depth = -y;

if (health_ <= 0) 
	instance_destroy();
	
