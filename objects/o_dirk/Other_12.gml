/// @description Prepare State
if(!instance_exists(o_player))
	exit;

if(alarm[1] <= 0) {
	var _direction_attack = point_direction(x,y,o_player.x,o_player.y);
	scr_set_move_values(self,_direction_attack, 4, 0.2);
	state_ = dirk.attack;
}