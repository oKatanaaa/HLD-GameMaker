///@description Idle State

if(point_distance(x,y,o_player.x,o_player.y) <= view_range_ && !collision_line(x, y, o_player.x, o_player.y, o_solid, 0, 0)) { 
	state_ = dirk.follow;
	alarm[4] = global.one_second * choose(1, 1.5, 2);
	image_index = 0;
	sprite_index = s_dirk_move;
}
