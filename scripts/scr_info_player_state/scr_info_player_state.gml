var _current_state = "state: ";

switch(o_player.state_) {
	case player.move:
		_current_state += "move";
		break;
	case player.jump:
		_current_state += "jump";
		break;
	case player.attack:
		_current_state += "attack";
		break;
}

return _current_state;