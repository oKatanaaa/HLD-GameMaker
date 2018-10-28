/// @description Path move alarm

//stop path based moving
path_end();

//set direction for random moving
current_direction_ = point_direction(xPrev_, yPrev_, x, y);

//configure random moving
rand_degree_ = choose(10, 20, 30)*2;
sign_ = choose(1, -1);

//set time how long dirk moves radomly
alarm[2] = global.one_second * choose(0.5, 0.75, 1, 1.25);
