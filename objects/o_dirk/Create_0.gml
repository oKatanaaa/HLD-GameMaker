event_inherited();
pathmoving_ = true;
view_range_ = 120;
attack_range_ = -1;
speed_ = 1;
enum dirk {
	idle,
	follow,
	prepare,
	attack
}

state_ = dirk.idle;

///Create the path
path_ = path_add();