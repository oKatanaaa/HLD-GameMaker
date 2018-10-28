/// @description Prepare State

if(scr_animation_ended()) {
	var _direction_attack = point_direction(x,y,o_player.x,o_player.y);
	scr_set_move_values(self,_direction_attack, 4, 0.1);
	state_ = dirk.attack;
	
	sprite_index = s_dirk_attack;
	image_index = 0;
	image_speed = 1.3;
}