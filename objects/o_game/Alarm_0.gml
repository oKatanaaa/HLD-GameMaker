/// @description xPrev yPrev alarm

if(instance_exists(o_player)) {
	xPrev_ = o_player.x;
	yPrev_ = o_player.y;
}

alarm[0] = global.one_second/10;