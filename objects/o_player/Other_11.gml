/// @description Jump State
scr_move_object_to();
if(clone_count_ < 2 and alarm[0] <= 0) {
	//create player copies that will follow him
	instance_create_layer(previous_x_, previous_y_, "Instances", o_player_jump);
	alarm[0] = global.one_second/20;
	clone_count_++;
}

if (move_speed_ <= 0)					//get back to move state
	state_ = player.move;
	