/// @description Attack State

// Inherit the parent event
if(!instance_exists(self))
	exit;
	
scr_move_object_to();

if (scr_animation_ended()) {
	state_ = dirk.follow;
	
	sprite_index = s_dirk_move;
	image_index = 0;
	image_speed = 1;
}