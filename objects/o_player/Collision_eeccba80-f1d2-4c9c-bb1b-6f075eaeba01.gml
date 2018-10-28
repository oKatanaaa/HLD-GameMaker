if (!invincible_ and other.state_ == dirk.attack) {
	invincible_ = true;
	alarm[2] = global.one_second/3;
	//health_ -= other.damage_;
}
