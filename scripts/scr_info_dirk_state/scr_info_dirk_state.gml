var _current_state = "state: ";

switch(state_) {
	case dirk.idle:
		_current_state += "idle";
		break;
	case dirk.follow:
		_current_state += "follow";
		break;
	case dirk.prepare:
		_current_state += "prepare";
		break;
	case dirk.attack:
		_current_state += "attack";
		break;
}

return _current_state;