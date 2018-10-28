if (scr_is_target(other) == true and !invincible_ ) {
	invincible_ = true;
	alarm[0] = global.one_second/2;
	health_ -= other.damage_;
} 